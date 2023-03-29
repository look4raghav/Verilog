module mod3 ([port_list]);
  reg c;
endmodule

module mod4 ([port_list]);
  wire a;
endmodule

module mod1 ([port_list]);
  wire y;
  mod3 mod_inst1(..);
  mod3 mod_inst2(..);
endmodule

module mod2 ([port_list]);
  mod4 mod_inst1(..);
  mod4 mod_inst2(..);
endmodule

module design ([port_list]);
  wire _net;
  mod1 mod_inst1(..);
  mod2 mod_inst2(..);
endmodule