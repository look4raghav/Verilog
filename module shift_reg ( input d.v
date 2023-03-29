module shift_reg ( input d,
                   input clk,
                   input rstn,
                  output q);
  wire [2:0] q_net;
  dff u0 (.d(d), .clk(clk), .rstn(rstn), .q(q_net[0]));
  dff u1 (.d(d_net[0]), .clk(clk), .rstn(rstn), .q(q_net[1]));
  dff u2 (.d(d_net[1]), .clk(clk), .rstn(rstn), .q(q_net[2]));
  dff u3 (.d(d_net[2]), .clk(clk), .rstn(rstn), .q(q));
  
endmodule