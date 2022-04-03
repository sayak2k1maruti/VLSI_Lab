`timescale 1ns / 1ps
module Demux_1_4(
    input I,
    input [1:0]  S,
    output [3:0] Q
    );
    assign Q[0] = ~S[1] & ~S[0] & I;
    assign Q[1] = ~S[1] & S[0] & I;
    assign Q[2] = S[1] & ~S[0] & I;
    assign Q[3] = S[1] & S[0] & I;
endmodule
