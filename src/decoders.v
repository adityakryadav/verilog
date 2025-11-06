// Decoders: 2-to-4 and 3-to-8
`timescale 1ns/1ps

module DEC2_4 (
  input [1:0] in,
  input en,
  output [3:0] out
);
  assign out = en ? (4'b0001 << in) : 4'b0000;
endmodule

module DEC3_8 (
  input [2:0] in,
  input en,
  output [7:0] out
);
  assign out = en ? (8'b00000001 << in) : 8'b00000000;
endmodule
