`timescale 1ns / 1ps
module Decoder(input [2:0] I , output [7:0] Q);
    assign Q[0] = ~I[2] & ~I[1] & ~I[0];
    assign Q[1] = ~I[2] & ~I[1] & I[0];
    assign Q[2] = ~I[2] & I[1] & ~I[0];
    assign Q[3] = ~I[2] & I[1] & I[0];
    assign Q[4] = I[2] & ~I[1] & ~I[0];
    assign Q[5] = I[2] & ~I[1] & I[0];
    assign Q[6] = I[2] & I[1] & ~I[0];
    assign Q[7] = I[2] & I[1] & I[0];
endmodule
