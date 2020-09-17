`include "interface.sv"

module top();
	reg clk = 0;
 	initial // clock generator
 	forever #5 clk = ~clk;
  	
  	//	interface
  	intf_cnt intf(clk);
  
  	// DUT connection
  PID #()dut();
  
  	
  
  
  
endmodule 


module top();
  reg clk = 0;
  initial // clock generator
  forever #5 clk = ~clk;
   
  // Interface
  intf_cnt intf(clk);
  
  // DUT connection	
  sync_fifo dut (
    .clk   (clk), 
    .rst   (intf.rst),
    .wr_cs  (intf.wr_cs),
    .rd_cs  (intf.rd_cs),
    .data_in (intf.data_in),
    .rd_en  (intf.rd_en),
    .wr_en  (intf.wr_en),
    .data_out (intf.data_out),
    .empty  (intf.empty),
    .full   (intf.full) 
  );

  initial begin
    $dumpfile("verilog.vcd");
    $dumpvars(0);
  end

  //Test case
  testcase test(intf);

endmodule
