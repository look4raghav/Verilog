module mux_4_1_df(Y,I,S);
  input [3:0]I;
  input [1:0]S;
  output Y;
  
  assign Y=I[S];
  
endmodule
