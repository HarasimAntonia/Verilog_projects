`timescale 1ns / 1ps

module top_tb();
reg [1:0] a_tb;
reg [1:0] b_tb;
reg sel_op_tb;
reg show_sum_tb;
wire [6:0] out_tb;
 top dut(
           .a(a_tb),
           .b(b_tb),
           .sel_op(sel_op_tb),
           .show_sum(show_sum_tb),
           .out(out_tb)
         );
 initial
  begin
    a_tb=0;
    #4
    a_tb=1;
    #4
    a_tb=2;
    #4
    a_tb=3;
    #4
    a_tb=0;
    #4
    a_tb=1;
    #4
    a_tb=2;
    #4
    a_tb=3;
    #4
    a_tb=0;
    #4
    a_tb=1;
    #4
    a_tb=2;
    #4
    a_tb=3;
    #4
    a_tb=0;
    #4
    a_tb=1;
    #4
    a_tb=2;
    #4
    a_tb=3;
    #4
    $stop();
  end
  
  initial 
  begin
    b_tb=0;
    #16
    b_tb=1;
    #16
    b_tb=2;
    #16
    b_tb=3;
    #16
    $stop();
  end
   
   initial 
    begin
      sel_op_tb=0;
      #8
      sel_op_tb=1;
      #8
      sel_op_tb=0;
      #8
      sel_op_tb=1;
      #8
      sel_op_tb=0;
      #8
      sel_op_tb=1;
      #8
      sel_op_tb=0;
      #8
      sel_op_tb=1;
      #8
      $stop();
    end
    
initial
  begin
    show_sum_tb=0;
    #32
    show_sum_tb=1;
    #32
    $stop();
  end
endmodule
