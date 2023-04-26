module up_down_counter(q,up_down,clk,reset);
  output [3:0]q;
  input up_down,clk,reset;
  reg [3:0]q=0;
  always@(posedge clk)
    begin
      if(reset)
        begin
          q<=4'b0;
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