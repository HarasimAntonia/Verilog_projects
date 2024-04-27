`timescale 1ns / 1ps

module top_sum(
                  input [1:0] a,
                  input [1:0] b,
                  input sel_op,
                  input show_sum,
                  output [3:0] out_select
                );
          wire [3:0] sum0;
          wire [3:0] sum1;
          wire greater;
          wire smaller;
          wire comp;
          wire [3:0] sum;
 sum_bits sum_bits_1( 
                     .in(a),
                     .out(sum0)
                  ); 
  sum_bits sum_bits_2(
                       .in(b),
                       .out(sum1)
                      );   
 cmp cmp(
           .op1(sum0),
           .op2(sum1),
           .greater(greater),
           .smaller(smaller)
         );   
  mux mux(
            .in0(greater),
            .in1(smaller),
            .sel(sel_op),
            .out(comp)
         ); 
 mux4 mux4_1(
                .in0(sum0),
                .in1(sum1),
                .sel(~comp),
                .out(sum)
          );
 mux4 mux4_2(
                .in0({3'b000,~comp}),
                .in1(sum),
                .sel(show_sum),
                .out(out_select)
             );
endmodule
