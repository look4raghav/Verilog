module mux_2_1_if(Y,I1, I2,S);
  
  input I1, I2;
  input S;
  output reg Y;
  
  always@(*)
    if(S ==0)
      Y=I1;
  else
    Y=I2;
  
endmodule













// Code your testbench here
// or browse Examples
module mux_2_1_tb;
  
  parameter DELAY = 10;
  
  reg I0, I1, S;
  wire Y;
  
  mux_2_1_if mux (.I1(I0), .I2(I1), .S(S), .Y(Y));
  
  initial begin
    I0 = 0;
    I1 = 1;
    S  = 0;
    #DELAY;
    if (Y != 0) $display("Test-case 1 failed Y =  %d", Y);
    
    I0 = 0;
    I1 = 1;
    S  = 1;
    #DELAY;
    if (Y != 1) $display("Test case 2 failed Y = %d", Y);
        
    $finish;
  end 
endmodule
