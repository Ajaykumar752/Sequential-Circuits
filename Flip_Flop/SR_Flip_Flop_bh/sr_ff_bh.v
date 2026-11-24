`timescale 1ns / 1ps
module s_r_ff_bh(
    input      s, r, clk,
    output reg q,
    output     qbar
);
 assign qbar = ~q;

 always @(posedge clk) begin
   case ({s, r})
       2'b00: q <= q;      // no change
       2'b01: q <= 1'b0;   // reset
       2'b10: q <= 1'b1;   // set
       2'b11: q <= 1'bx;   // invalid
    endcase
  end
endmodule
