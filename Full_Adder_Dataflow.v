module FA_df(s, c, a, b, Cin);
  input a, b, Cin;
  output s, c;
  
  assign s=a^b^Cin;
  assign c=a&b | b&Cin | Cin&a;
  
endmodule
