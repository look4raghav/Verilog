module counter_10_to_40_up (count, u_d, load, clk, rst, data)

  input[7:0]data;
  input clk, rst;
  output [7:0]count;

  reg [7:0] count_temp;
  always@(posedge clk)
    if(!rst | count_temp>=8'd40 | count_temp<10)
      count_temp <= 8'd10;
  else if(load)
    count_temp <= data;
  else if(u_d)
    count_temp <= (count_temp>=40)?8'd10:count_temp+1;
  else
    count_temp <= (count_temp<=8'd10)?8'd40:count_temp-1;

  assign count = count_temp;

endmodule
