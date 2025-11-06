`timescale 1ns/1ps
`include "src/muxes.v"

module tb_muxes;
  reg [1:0] sel4;
  reg [2:0] sel8;
  reg a,b,c,d,e,f,g,h;
  wire y2, y4, y8;

  MUX2_1 u2(.a(1'b0), .b(1'b1), .sel(1'b0), .y(y2)); // static example
  MUX4_1 u4(.d0(a), .d1(b), .d2(c), .d3(d), .sel(sel4), .y(y4));
  MUX8_1 u8(.d0(a),.d1(b),.d2(c),.d3(d),.d4(e),.d5(f),.d6(g),.d7(h), .sel(sel8), .y(y8));

  initial begin
    a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    $display("sel4 | y4  | sel8 | y8");
    for (integer i=0;i<4;i=i+1) begin
      sel4 = i;
      #1 $display("%b    |  %b  |  -   | -", sel4, y4);
    end
    for (integer j=0;j<8;j=j+1) begin
      sel8 = j;
      #1 $display(" -    |  -  | %b   | %b", sel8, y8);
    end
    $finish;
  end
endmodule
