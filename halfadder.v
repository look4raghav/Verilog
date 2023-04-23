module HA(s,c,a,b);
  input a, b;
  output s, c;
  
  assign s = a ^ b;    
  assign s = a & b;
  
endmodule
