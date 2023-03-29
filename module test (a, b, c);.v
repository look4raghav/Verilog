module test (a, b, c);
	input [7:0] a;
	input [7:0] b;
	output [7:0] c;

	wire [7:0] a;
	wire [7:0] b;
	wire [7:0] c;
endmodule;

module test (a, b, c);
	input [7:0] a, b;
	output [7:0] c;

	reg [7:0] c;
endmodule;