`timescale 1ns / 1ps

module sipo (
    input        clk,
    input        rst,
    input        s_in,       // serial input
    output reg [3:0] q       // parallel output
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        q <= 4'b0000;        // clear all bits
    else begin
        q[3] <= s_in;        // new bit enters at MSB
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
    end
end

endmodule
