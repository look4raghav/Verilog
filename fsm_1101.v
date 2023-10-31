// Code your design here
// fsm pattern which detects 1101

module fsm(input sequence_in, input clk, input rst, output detector_out);
  
  parameter IDLE = 0,
		  S1     = 1,
		  S11    = 2,
		  S110   = 3,
		  S1101  = 4;

  reg [2:0] present_state, next_state;
  
  assign out = present_state == S1101 ? 1 : 0;
  
  always @ (posedge clk) begin
    if(!rst)
      present_state <= IDLE;
    else
      present_state <= next_state;
  end
  
  always @ (present_state or sequence_in) begin
    case (present_state)
      IDLE : begin
        if(sequence_in) next_state = S1;
        else
          next_state = IDLE;
      end
      
      S1: begin
        if(sequence_in) next_state = IDLE;
        else
          next_state = S11;
      end
      
      S11: begin
        if(sequence_in) next_state = S110;
        else
          next_state = IDLE;
      end
      
      S110: begin
        if(sequence_in) next_state = S1101;
        else
          next_state = IDLE;
      end
      
      S1101: begin
        next_state = IDLE;
      end
    endcase
  end
endmodule
          
