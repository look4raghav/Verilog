<<<<<<< HEAD
module des ( input 			clk,
             input  		rstn,
             input	 		wr,
             input 			sel,
             input [15:0] 	wdata,
             output [15:0] 	rdata);
  reg [15:0] register;
  
  always @ (posedge clk) begin
    if (!rstn)
      register <= 0;
    else begin
      if (sel & wr)
        register <= wdata;
      else
        register <= register;
    end
  end
  
  assign rdata = (sel & ~wr) ? register : 0;
=======
module des ( input 			clk,
             input  		rstn,
             input	 		wr,
             input 			sel,
             input [15:0] 	wdata,
             output [15:0] 	rdata);
  reg [15:0] register;
  
  always @ (posedge clk) begin
    if (!rstn)
      register <= 0;
    else begin
      if (sel & wr)
        register <= wdata;
      else
        register <= register;
    end
  end
  
  assign rdata = (sel & ~wr) ? register : 0;
>>>>>>> 356489259eb2c39105ceb263f4b6852bb770ba33
endmodule