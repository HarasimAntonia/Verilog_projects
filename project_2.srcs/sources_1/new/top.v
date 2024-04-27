`timescale 1ns / 1ps

module top(
               input [1:0] a,
               input [1:0] b,
               input sel_op,
               input show_sum,
               output [6:0] out
            ); 
            
            wire [3:0] w0;
  top_sum top_sum(
                    .a(a),
                    .b(b),
                    .sel_op(sel_op),
                    .show_sum(show_sum),
                    .out_select(w0)
                  );
   transcodor transcodor(
                             .in(w0),
                             .out(out)  
                          );
endmodule
