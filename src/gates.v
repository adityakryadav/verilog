// Basic logic gates implemented as simple modules
`timescale 1ns/1ps

module AND2 (input a, input b, output y);
  assign y = a & b;
endmodule

module OR2 (input a, input b, output y);
  assign y = a | b;
endmodule

module NOT1 (input a, output y);
  assign y = ~a;
endmodule

module NAND2 (input a, input b, output y);
  assign y = ~(a & b);
endmodule

module NOR2 (input a, input b, output y);
  assign y = ~(a | b);
endmodule

module XOR2 (input a, input b, output y);
  assign y = a ^ b;
endmodule

module XNOR2 (input a, input b, output y);
  assign y = ~(a ^ b);
endmodule
