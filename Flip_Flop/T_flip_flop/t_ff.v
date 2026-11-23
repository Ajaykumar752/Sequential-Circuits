`timescale 1ns / 1ps
module t_ff(q,qbar,t,clk,clr);
input t,clk;
input clr;
output reg q;
output qbar;

always @(posedge clk or posedge clr) 
begin
    if(clr)
    q <=1'b0;
    else if(t)
    q <=~q;
    end
    assign qbar=~q;
   
endmodule





