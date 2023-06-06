module counter_up_load(count, clk, rst, load, data)
  input [7:0]data;
  input clk, rst, load;
  output [7:0]count;
  
  reg [7:0] count_temp;
  
  always@(posedge clk)
    if(!rst)
      count_temp <= 8'd0;
  else if(load)
    count_temp <= data;
  else
    count_temp <= count_temp+1;
  
  assign count=count_temp;
endmodule
