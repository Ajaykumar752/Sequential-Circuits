`timescale 1ns / 1ps
module siso(
 input clk,s_in,rst,
 output s_out
    );
reg [3:0]q;  //4 flip-flop 

    always @(posedge clk or posedge rst)
    begin
    if (rst)
       q <= 4'b0000;   // clear all bit
    else 
    q <= {s_in, q[3:1]};
    
    end
    assign s_out = q[0];     // output taken from lsb    
endmodule
