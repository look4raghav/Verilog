module comparator_bh(Eq, Gt, Sm, A, B);
  
  input [3:0]A, B;
  output reg Eq, Gt, Sm;
  
  always@(*) begin
    Eq= (A==B);
    Gt= (A>B);
    Sm= (A<B);
  end
endmodule
