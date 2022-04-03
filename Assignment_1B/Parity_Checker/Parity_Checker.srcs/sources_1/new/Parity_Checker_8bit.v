`timescale 1ns / 1ps
module Parity_Checker_8bit(input [2:0] I,output Q);
    assign Q = I[0] ^ I[1] ^ I[2];    
endmodule
