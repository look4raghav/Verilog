module seq_001(det, inp, clk, rst);
  input inp, clk, rst;
  output reg det;
  parameter S0=2'b00, S1=2'b01, S2=2'b10;
  reg [1:0] pr_state, nxt_state;
  always @(posedge clk)
    if(reset)
      pr_state <= S0;
  else
    pr_state <= nxt_state;
  
  always @(input, pr_state)
    case(pr_state)
      S0 : if(inp) nxt_state = S0;
      else nxt_state = S1;
      S1 : if(inp) nxt_state = S0;
      else nxt_state = S2;
      S2 : if(inp) nxt_state = S0;
      else nxt_state = S2;
      default : nxt_state = S0;
    endcase
      
  always @(inp, pr_state)
    case(pr_state)
      S0 : det=0;
      S1 : det=0;
      S2 : if(inp) det=1;
      else det=0;
      default : det=0;
    endcase
