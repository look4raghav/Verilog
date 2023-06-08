module seq_moore_001(det, inp, clk, rst);
  input inp, clk, rst;
  output reg det;
  parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
  reg [1:0] pr_state, nxt_state;
  
  always @(posedge clk)
    if(reset)
      pr_state <= S0;
  else
    pr_state <= nxt_state;
  
  always @(inp, pr_state)
    case(pr_state)
      S0: if(inp) nxt_state=S0;
      else nxt_state=S1;
      S1: if(inp) nxt_state=S0;
      else nxt_state=S2;
      S2: if(inp) nxt_state=S3;
      else nxt_state=S2;
      S3: if(inp) nxt_state=S0;
      else nxt_state=S1;
      default nxt_state = S0;
    endcase
      
      always@(pr_state)
        case(pr_state)
          S0: det=0;
          S1: det=0;
          S2: det=0;
          S3: det=1;
          default: det=0;
        endcase
endmodule
