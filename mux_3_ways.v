// Code your design here
module mux_2_1(Y,I,S);
  input [1:0]I;
  input S;
  output Y;
  
  assign Y = S?I[1]:I[0];
  
endmodule





module mux_2_1(Y,I,S);
  
  input[1:0]I;
  input S;
  output reg Y;
  
  always@(*)
    if(S)
      Y=I[1];
  else
    Y=I[0];
  
endmodule









module mux_2_1(Y, I, S);
  input [1:0]I;
  input S;
  output reg Y;
  
  always@(*)
    case(S)
      2'd0: Y=I[0];
      2'd1: Y=I[1];
      default:$display("error");
    endcase
endmodule
