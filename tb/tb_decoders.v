`timescale 1ns/1ps
`include "../src/decoders.v"

module tb_decoders;
  reg [1:0] in2;
  reg [2:0] in3;
  reg en;
  wire [3:0] out2;
  wire [7:0] out3;

  DEC2_4 U2(in2, en, out2);
  DEC3_8 U3(in3, en, out3);

  initial begin
    en = 1;
    $display("DEC2_4:");
    for (integer i=0;i<4;i=i+1) begin
      in2 = i; #1 $display("in=%b out=%b", in2, out2);
    end
    $display("\nDEC3_8:");
    for (integer j=0;j<8;j=j+1) begin
      in3 = j; #1 $display("in=%b out=%b", in3, out3);
    end
    $finish;
  end
endmodule
