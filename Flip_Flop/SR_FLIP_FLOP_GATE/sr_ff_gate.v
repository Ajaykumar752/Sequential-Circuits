`timescale 1ns / 1ps

module s_r_ff_gate(
input s,r,clk,
output q,qbar
    );
wire n1,n2;
nand #1 g1(n1,s,clk);
nand #1 g2(n2,r,clk);
nand #1 g3(q,n1,qbar);
nand #1 g4(qbar,n2,q);
endmodule
