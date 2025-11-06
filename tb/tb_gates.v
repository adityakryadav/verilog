`timescale 1ns/1ps
`include "src/gates.v"

module tb_gates;
  reg a,b;
  wire andy, ory, noty, nandy, nory, xory, xnory;

  AND2 U1(a,b,andy);
  OR2  U2(a,b,ory);
  NOT1 U3(a,noty);
  NAND2 U4(a,b,nandy);
  NOR2  U5(a,b,nory);
  XOR2 U6(a,b,xory);
  XNOR2 U7(a,b,xnory);

  initial begin
    $display("a b | AND OR NOT(a) NAND NOR XOR XNOR");
    for (integer i=0;i<4;i=i+1) begin
      {a,b} = i;
      #1 $display("%b %b |  %b   %b   %b     %b    %b    %b    %b", a,b,andy,ory,noty,nandy,nory,xory,xnory);
    end
    $finish;
  end
endmodule
