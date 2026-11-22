`timescale 1ns / 1ps
module d_latch_bh(q,d,en);
input en,d;
output reg q;
always @(en,d)
if(en)
q=d;
endmodule
