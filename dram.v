module dram(out, data, wr, rd, clk, rst);
  parameter width = 8;
  parameter depth = 16;
  parameter addr = 3;
  reg [width-1:0] mem [depth-1:0];
  input wire clk, rst, wr, rd;
  input wire [width-1:0] data;
  output reg [width-1:0] out;
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      mem[0] <= 0;
    end 
    else if (rd && wr) begin
      mem[addr] <= data; // Wr
    end 
    else if (rd && ~wr) begin
      out <= mem[addr]; // Rd
    end
  end
endmodule



















// Code your testbench here
// or browse Examples
module dram_tb;
  reg clk, rst, wr, rd;
  reg [7:0] data;
  wire [7:0] out;

  dram dut (
    .out(out),
    .data(data),
    .wr(wr),
    .rd(rd),
    .clk(clk),
    .rst(rst)
  );

  always begin
    #5 clk = ~clk;
  end

  initial 
    begin
      $dumpfile("dump.vcd"); 
  $dumpvars;
    clk = 0;
    rst = 1;
    wr = 0;
    rd = 0;
    data = 8'h00;

    #10 rst = 0;

    #5 wr = 1;
    #5 data = 8'hFF;
    #5 wr = 0;

    #5 rd = 1;
    #5 rd = 0;

    #10 $finish;
  end
endmodule
