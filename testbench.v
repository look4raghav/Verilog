//testbench

module tb;
  reg tb_clk;
  reg tb_d;
  reg tb_rstn;
  wire tb_q;
  
  dff dff0 ( .clk  (tb_clk),
             .d    (tb_d),
             .rstn (tb_rstn),
             .q    (tb_q));
  
  initial begin
    tb_rsnt <= 1'b0;
    tb_clk  <= 1'b0;
    tb_d    <= 1'b0;
  end
endmodule