module ram_single_port1(
  output reg [7:0]q;
  input [7:0] data;
  input [5:0] read_addr, write_addr;
  input we, clk
);
  reg[7:0] ram[63:0];
  always@(posedge clk)
    begin
      if(we)
        ram[write_addr] <= data;
      q <= ram[read_addr];
    end
endmodule
