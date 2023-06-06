module counter_up_basic_tb;
  reg clk, reset;
  wire [7:0] count;
  
  counter_up_basic c0(.clk(clk), .rst(rst), .count(count));
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    
    #10 rst = 0;
    #20 rst = 1;
    #100 $stop;
  end
endmodule
