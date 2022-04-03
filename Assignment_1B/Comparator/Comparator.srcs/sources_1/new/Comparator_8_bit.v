`timescale 1ns / 1ps
module Comparator_2_bit(input [1:0] A , [1:0] B , output Q2,Q1,Q0);
    assign Q2 = (A[1] & ~B[1]) | (A[0] & ~B[1] & ~B[0]) | (A[1] & A[0] & ~B[0]);
    assign Q1 = (~A[1] & B[1]) | (B[0] & ~A[1] & ~A[0]) | (B[1] & B[0] & ~A[0]);
    assign Q0 = (A[0] ~^ B[0]) & (A[1] ~^ B[1]);
endmodule
