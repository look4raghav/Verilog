`define ALULEN 31
module alu32(Result, ALU0p, A, B, Zero) ;
  output [`ALULEN:0] Result;
  reg [`ALULEN:0] Result;
  output Zero;
  reg Zero;
  input [2:0] ALU0p;
  input [`ALULEN:0] A, B;
  
  always @(A or B or ALU0p)
    begin
      case (ALU0p)
        3'b000: Redult = A & B ;
        3'b001: Redult = A | B ;
      endcase
      
    end
endmodule
