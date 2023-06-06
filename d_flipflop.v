module dffb(q,d,clk);

	input d,clk;
	output reg q;

	always@(posedge clk)
	if(clk)
		q = d;

endmodule
