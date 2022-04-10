`timescale 1ns / 1ps
`include "half_adder.v"
module FA(input X,Y,Z, output S,C);
    wire c1,c2,s1;
    half_adder ha1(X,Y,s1,c1);
    half_adder ha2 (s1,Z,S,c2);
    assign C= c1|c2;
endmodule
