// Code your design here
module up_down_counter(q,up_down,clk,reset);
  parameter cnumber=8;
  output [cnumber - 1:0]q;
  input up_down,clk,reset;
  reg [cnumber - 1:0]q=0;
  always@(posedge clk)
    begin
      if(reset)
        begin
          q<=8'b0;
        end
      else if (up_down)
        begin
          q<=q+1;
        end
      else begin
        q<=q-1;
      end
    end
endmodule
