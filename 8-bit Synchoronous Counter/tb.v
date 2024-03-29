module top_tb();
    reg clk;
    reg reset;
    reg preset;
    reg [7:0]preset_input;
    wire tpulse;
    
    top DUT(clk, reset, preset, preset_input, tpulse);
    
    initial
    begin
      $dumpfile("test.vcd");
    $dumpvars(1);
        clk = 0;
        #10
        clk = 1;
        preset = 1;
        preset_input = 8'd250; 
        #5
        preset = 0;
        forever #10 clk = ~clk;
    end
    
    initial
        #160 $finish;
endmodule
