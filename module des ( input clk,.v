module des ( input 			clk,
             input  		rstn,
            input [1:0]		addr,
             input 			wr,
             input [15:0] 	wdata,
             output [15:0] 	rdata);
  reg [15:0] register [0:3];
  integer 1;
  
  always @ (posedge clk) begin
    if (!rstn) begin
      for (i = 0; i < 4; i = i+1) begin
        register[i] <= 0;
      end
    end else begin
      if (sel & wr)
        register[addr] <= wdata;
      else
        register[addr] <= register[addr];
    end
  end
  assign rdata = (sel & ~wr) ? register[addr] : 0;
endmodule