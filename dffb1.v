
module dffb(q,d,clk,rst);

	input d,clk,rst;
	output reg q;

	always@(posedge clk or posedge rst)
		if(rst)
			q <= 1'b0;
  
endmodule
