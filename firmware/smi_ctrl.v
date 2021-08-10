module smi_ctrl
    (
        input               i_reset,
        input               i_sys_clk,        // FPGA Clock

        input [4:0]         i_ioc,
        input [7:0]         i_data_in,
        output reg [7:0]    o_data_out,
        input               i_cs,
        input               i_fetch_cmd,
        input               i_load_cmd,
        
        // FIFO INTERFACE 0.9 GHz
        output              o_fifo_09_pull,
        input [31:0]        i_fifo_09_pulled_data,
        input               i_fifo_09_full,
        input               i_fifo_09_empty,

        // FIFO INTERFACE 2.4 GHz
        output              o_fifo_24_pull,
        input [31:0]        i_fifo_24_pulled_data,
        input               i_fifo_24_full,
        input               i_fifo_24_empty,

        // SMI INTERFACE
        input [2:0]         i_smi_a,
        input               i_smi_soe_se,
        input               i_smi_swe_srw,
        output reg [7:0]    o_smi_data_out,
        input [7:0]         i_smi_data_in,
        output              o_smi_read_req,
        output              o_smi_write_req,
        output              o_smi_writing,
        
        // Errors
        output reg          o_address_error );

    // MODULE SPECIFIC IOC LIST
    // ------------------------
    localparam
        ioc_module_version  = 5'b00000,     // read only
        ioc_fifo_status     = 5'b00001;     // read-only

    // MODULE SPECIFIC PARAMS
    // ----------------------
    localparam
        module_version  = 8'b00000001;

    // SMI ADDRESS DEFS
    // ----------------
    localparam
        smi_address_idle = 3'b000,
        smi_address_read_900 = 3'b001,
        smi_address_read_2400 = 3'b010,
        smi_address_read_res = 3'b011,
        smi_address_read_res1 = 3'b100,
        smi_address_write_900 = 3'b101,
        smi_address_write_2400 = 3'b110,
        smi_address_write_res2 = 3'b111;

    always @(posedge i_sys_clk)
    begin
        if (i_reset) begin
            o_address_error <= 1'b0;
            // put the initial states here
        end else begin        
            if (i_cs == 1'b1) begin
                if (i_fetch_cmd == 1'b1) begin
                    case (i_ioc)
                        //----------------------------------------------
                        ioc_module_version: o_data_out <= module_version; // Module Version

                        //----------------------------------------------
                        ioc_fifo_status: begin
                            o_data_out[0] <= i_fifo_09_empty;
                            o_data_out[1] <= i_fifo_09_full;
                            o_data_out[2] <= i_fifo_24_empty;
                            o_data_out[3] <= i_fifo_24_full;
                            o_data_out[7:4] <= 4'b0000;
                        end

                    endcase
                end
            end 
        end
    end

    // Tell the RPI that data is pending in either of the two fifos
    assign o_smi_read_req = !i_fifo_09_empty || !i_fifo_24_empty;

    reg r_last_soe;
    reg [5:0] int_cnt_09;
    reg [5:0] int_cnt_24;
    reg r_fifo_09_pull;
    reg r_fifo_24_pull;

    always @(posedge i_sys_clk)
    begin
        if (i_reset) begin
            int_cnt_09 <= 6'd32;
            int_cnt_24 <= 6'd32;
            r_last_soe <= 1'b1;
            r_fifo_09_pull <= 1'b0;
            r_fifo_24_pull <= 1'b0;
        end else begin            
            //==========================
            //  0.9 GHz Data Sender
            //==========================
            if (i_smi_a == smi_address_read_900) begin
                if (r_last_soe != i_smi_soe_se) begin
                    if (int_cnt_09 > 8) int_cnt_09 <= int_cnt_09 - 8;
                    if (r_fifo_09_pull) begin
                        r_fifo_09_pull <= 1'b0;
                        o_smi_data_out <= i_fifo_09_pulled_data[int_cnt_09-1:int_cnt_09-8];
                    end
                end
                else if (i_smi_soe_se == 1'b1) begin
                    if (int_cnt_09 > 0) begin
                        r_fifo_09_pull <= 1'b0;
                        o_smi_data_out <= i_fifo_09_pulled_data[int_cnt_09-1:int_cnt_09-8];
                    end else if ((i_fifo_09_empty == 1'b0) && (int_cnt_09 == 6'd0)) begin
                        r_fifo_09_pull <=1'b1;
                        int_cnt_09 <= 6'd32;
                    end
                end
            end
            //==========================
            //  2.4 GHz Data Sender
            //==========================
            else if (i_smi_a == smi_address_read_2400) begin
                if (r_last_soe != i_smi_soe_se) begin
                    if (int_cnt_24 > 8) int_cnt_24 <= int_cnt_24 - 8;
                    if (r_fifo_24_pull) begin
                        r_fifo_24_pull <= 1'b0;
                        o_smi_data_out <= i_fifo_24_pulled_data[int_cnt_24-1:int_cnt_24-8];
                    end
                end
                else if (i_smi_soe_se == 1'b1) begin
                    if (int_cnt_24 > 0) begin
                        r_fifo_24_pull <= 1'b0;
                        o_smi_data_out <= i_fifo_24_pulled_data[int_cnt_24-1:int_cnt_24-8];
                    end else if ((i_fifo_24_empty == 1'b0) && (int_cnt_24 == 6'd0)) begin
                        r_fifo_24_pull <=1'b1;
                        int_cnt_24 <= 6'd32;
                    end
                end
            end
            else begin
                // error with address
                o_address_error <= 1'b1;
            end

            r_last_soe <= i_smi_soe_se;
        end
    end

    assign o_fifo_09_pull = r_fifo_09_pull;
    assign o_fifo_24_pull = r_fifo_24_pull;
    assign o_smi_writing = i_smi_a[2];

endmodule // smi_ctrl