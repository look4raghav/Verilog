module mux_2_1_tb;
  reg a, b, s;
  wire y;
  
  mux_2_1 mux(a,b,s,y);
  
  initial
  begin
    a=0; b=0; s=0;
    #20 b=1;
    #20 s=1;
    #20 a=1;
  end
endmodule
