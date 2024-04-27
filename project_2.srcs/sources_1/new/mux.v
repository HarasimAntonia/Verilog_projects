`timescale 1ns / 1ps

module mux(
             input in0,
             input in1,
             input sel,
             output out
           );
assign out=(~sel&in0)|(sel&in1);
endmodule
