module d_latch(
  input d,
  input rstn,
  input en,
  output reg q
);
  
  always @(en or rstn or d)
    if(!rstn)
      q <= 0;
  else (en)
    q <= d;
endmodule
