`timescale 1ns / 1ps
 module j_k_ff_bh(
 input      j, k, clk,
 output reg q,
 output     qbar
  );
 assign qbar = ~q;
    always @(posedge clk) begin
      case ({j, k})
        2'b00: q <= q;       // hold
        2'b01: q <= 1'b0;    // reset
        2'b10: q <= 1'b1;    // set
        2'b11: q <= ~q;      // toggle
        endcase
    end
endmodule
