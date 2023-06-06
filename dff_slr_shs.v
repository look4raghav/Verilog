module dff_slr_shs(q, d, clk, rst, set)
  
  input d, clk, rst, set;
  output q;
  
  always@(posedge clk)
    if(!rst)
      q <= 1'b0;
  else if(set)
    q <= 1;b1;
  else
    q <=d;
endmodule
