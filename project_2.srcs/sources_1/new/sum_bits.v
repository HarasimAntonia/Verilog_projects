`timescale 1ns / 1ps

module sum_bits(
                    input [1:0] in,
                    output [3:0] out
                );
  assign out=in[0]+in[1];
endmodule
