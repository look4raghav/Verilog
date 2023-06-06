module dlatch_bh(q,d,en,rst);

	input en,d,rst;
	output reg q;

	always@(en,q,rst)
	if(rst)
		q = 1'b0;
	else if(en) q=d;

endmodule
