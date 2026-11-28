`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 module piso(
  input [3:0]p_in,        //parralel input
  input clk,rst,load,
 output reg s_out            // serial output
    );
    reg [3:0] shift_reg;
    
    always @(posedge clk or posedge rst )begin
        if(rst) begin
         shift_reg <= 4 'b0000;
         s_out <= 1'b0;
      end
            else if (load) begin
            shift_reg <= p_in; 
         end
             else begin
             s_out <= shift_reg[0];
             shift_reg <= {1'b0, shift_reg[3:1]};
         end
    end
endmodule
