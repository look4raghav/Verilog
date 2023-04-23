module FA_bh(s,c,a,b,Cin);
  imput a,b,Cin;
  output s,c;
  
  always@(*)
    
    begin
      s = a^b^Cin;
      c = a&b | b&Cin | Cin&a;
    end
endmodule;
