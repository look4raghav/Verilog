module test;
  reg up_down, clk, reset;
  wire [3:0]q;
  up_down_counter test(q,up_down,clk,reset);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    up_down=0;
    clk=0;
    reset=0;
    #200 $finish;
  end
  always #80 up_down=~up_down;
  always #8 clk=~clk;
endmodule