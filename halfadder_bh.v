module HA_bh(s,c,a,b);
  input a, b;
  output    s, c;
  
  always @(a, b)
    begin
      s=a^b;
      c=a&b;
    end
endmodule
