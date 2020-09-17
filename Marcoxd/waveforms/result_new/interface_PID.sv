interface intf_PID #(wb_nb, adr_wb_nb) (input clk);
  logic i_rst;
  logic i_wb_cyc;
  logic i_wb_stb;
  logic i_wb_we;
  logic [adr_wb_nb-1:0]i_wb_adr;
  logic [wb_nb-1:0]i_wb_data;
  logic o_wb_ack;
  logic [wb_nb-1:0]o_wb_data;
  logic [31:0]o_un;
  logic o_valid;

endinterface

