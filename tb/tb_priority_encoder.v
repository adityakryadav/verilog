`timescale 1ns/1ps
`include "src/priority_encoder.v"

module tb_priority_encoder;
  reg [3:0] in;
  wire [1:0] code;
  wire valid;
  PRIORITY_ENC_4 U(in, code, valid);

  initial begin
    $display("in | valid code");
    for (integer i=0;i<16;i=i+1) begin
      in = i;
      #1 $display("%b |   %b    %b", in, valid, code);
    end
    $finish;
  end
endmodule
