// 4-to-2 priority encoder with valid output.
// Priority: in[3] highest, in[0] lowest
`timescale 1ns/1ps

module PRIORITY_ENC_4 (
  input [3:0] in,
  output reg [1:0] code,
  output reg valid
);
  always @(*) begin
    if (in[3]) begin code = 2'b11; valid = 1; end
    else if (in[2]) begin code = 2'b10; valid = 1; end
    else if (in[1]) begin code = 2'b01; valid = 1; end
    else if (in[0]) begin code = 2'b00; valid = 1; end
    else begin code = 2'b00; valid = 0; end
  end
endmodule
