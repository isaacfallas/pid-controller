interface intf_PID (input clk);
  logic i_rst;
  logic i_wb_cyc;
  logic i_wb_stb;
  logic i_wb_we;
  logic [15:0]i_wb_adr;
  logic [31:0]i_wb_data;
  logic o_wb_ack;
  logic [31:0]o_wb_data;
  logic [31:0]o_un;
  logic o_valid;

endinterface

