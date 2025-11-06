`timescale 1ns/1ps
`include "src/boolean_expr.v"

module tb_boolean_expr;
  reg A,B,C,D;
  wire F,G;

  BOOL1 u1(A,B,C,F);
  BOOL2 u2(A,B,C,D,G);

  initial begin
    $display("A B C D | F (A&B | ~C)  G ((A^B)&(C|D))");
    for (integer i=0;i<16;i=i+1) begin
      {A,B,C,D} = i;
      #1 $display("%b %b %b %b |   %b               %b", A,B,C,D,F,G);
    end
    $finish;
  end
endmodule
