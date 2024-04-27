`timescale 1ns / 1ps

module mux4(
              input [3:0] in0,
              input [3:0] in1,
              input sel,
              output [3:0] out
           );
  assign out=(~sel&in0)|(sel&in1);
endmodule
