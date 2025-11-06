// Multiplexers: 2:1, 4:1, 8:1
`timescale 1ns/1ps

module MUX2_1 #(parameter WIDTH=1)(
  input [WIDTH-1:0] a,
  input [WIDTH-1:0] b,
  input sel,
  output [WIDTH-1:0] y
);
  assign y = sel ? b : a;
endmodule

module MUX4_1 #(parameter WIDTH=1)(
  input [WIDTH-1:0] d0, d1, d2, d3,
  input [1:0] sel,
  output [WIDTH-1:0] y
);
  assign y = (sel==2'b00) ? d0 :
             (sel==2'b01) ? d1 :
             (sel==2'b10) ? d2 : d3;
endmodule

module MUX8_1 #(parameter WIDTH=1)(
  input [WIDTH-1:0] d0,d1,d2,d3,d4,d5,d6,d7,
  input [2:0] sel,
  output [WIDTH-1:0] y
);
  assign y = (sel==3'b000) ? d0 :
             (sel==3'b001) ? d1 :
             (sel==3'b010) ? d2 :
             (sel==3'b011) ? d3 :
             (sel==3'b100) ? d4 :
             (sel==3'b101) ? d5 :
             (sel==3'b110) ? d6 : d7;
endmodule
