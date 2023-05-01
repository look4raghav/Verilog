module checker( clk, rst, i, o);
  parameter I_WIDTH = 2;
  parameter X_WIDTH = 2;
  parameter S_WIDTH = 3;
  input clk;
  input rst;
  input [I_WIDTH - 1:0] i;
  output o;
  localparam INIT = 3'b001;
  reg  [S_WIDTH - 1:0] s;
  wire [X_WIDTH - 1:0] x;
  wire [S_WIDTH - 1:0] n;
  always @(posedge clk or posedge rst)
    if(rst)
      s <= INIT;
    else
      s <= n;
  assign x[0] = i[0];
  assign x[1] = i[1];
  assign n[0] = 1'b0;
  assign n[1] = s[0] & x[0];
  assign n[2] = s[1] & x[1];
  assign o = ~rst & (s[2]);
endmodule
