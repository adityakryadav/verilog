// Example boolean expressions implemented as modules.
// Example 1: F = (A & B) | (~C)
// Example 2: G = (A ^ B) & (C | D)

`timescale 1ns/1ps

module BOOL1(input A, input B, input C, output F);
  assign F = (A & B) | (~C);
endmodule

module BOOL2(input A, input B, input C, input D, output G);
  assign G = (A ^ B) & (C | D);
endmodule
