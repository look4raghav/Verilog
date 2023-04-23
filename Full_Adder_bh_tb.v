module FA_bh_tb;
  reg a, b, Cin;
  wire s, c;
  
  FA_bh FA1(s,c,a,b,Cin);
  initial
    begin
      $monitor("time=%d \t a=%b \t b=%b \t Cin=%b \t s=%b \t c=%b", $time,a,b,s,c,Cin);
      a=0;
      b=0;
      Cin=0;
      #10 a=1;
      #10 b=1;
      #10 Cin=1;
      #10 $stop;
    end
endmodule
