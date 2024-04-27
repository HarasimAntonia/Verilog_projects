`timescale 1ns / 1ps

module cmp(
                input [3:0] op1,
                input [3:0] op2,
                output reg greater,
                output reg smaller
           );
 always@(*)
  if(op1>=op2)
   begin
     greater=1;
     smaller=0;
   end
  else if(op1<op2)
   begin
     smaller=1;
     greater=0;
   end
endmodule
