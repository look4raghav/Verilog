module des;
  reg [31:0] data;
  int 		 i;
  
  initial begin
    data = 32'hFACE_CAFE;
    for (i = 0; i < 4; i++) begin
      $display ("data[8*%0d +: 8] = 0x%oh", i, data[8*i +: 8]);
    end
    
    $display ("data[7:0]   = 0x%oh", data[7:0]);
    $display ("data[15:8]  = 0x%oh", data[15:8]);
    $display ("data[23:16] = 0x%oh", data[23:16]);
    $display ("data[31:24] = 0x%oh", data[31:24]);
  end
endmodule
              