module testbench;
  integer int_a;
  real real_b;
  time time_c;
  
  initial begin
    int_a  = 32'hcafe_1234;
    real_b = 0.1234567;
    
    #20
    time_c = $time;
    
    $display ("int_a  = 0x%0h", int_a);
    $display ("real_b = %0.5f", real_b);
    $display ("time_c = x0t", time_c);
  end
endmodule