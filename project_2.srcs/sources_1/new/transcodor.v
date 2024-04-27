`timescale 1ns / 1ps

module transcodor(
                   input [3:0] in,
                   output reg [6:0] out
                 );
  always@(*)
   if(in==0) 
   begin
     out=7'b100_0000;
   end
   else if(in==1)
   begin
     out=7'b111_1001;
   end
   else if(in==2)
   begin
    out=7'b010_0100;
   end
   else 
   begin
   out=7'b000_0110;
   end
endmodule
