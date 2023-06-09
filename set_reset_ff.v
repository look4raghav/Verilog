module sr_ff(
  input wire S,
  input wire R,
  input wire clk,
  output reg q,
  output reg q_bar
);
  
  always@(posedge clk)
    begin
      if(S & ~R)
        begin
          q <= 1;
          q_bar <= 0;
        end
      else if (~s & R) 
        begin
          q <= 0;
          q_bar <= 1;
        end
    end
endmodule
