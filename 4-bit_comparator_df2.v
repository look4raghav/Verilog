module comparator_df2(Eq, Gt, Sm, A, B);
  
  input [3:0]A, B;
  output Eq, Gt, Sm;
  
  assign Eq= (A==B);
  assign Gt= (A>B);
  assign sm= (A<B);
  
endmodule
