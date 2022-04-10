`timescale 1ns / 1ps
`include "FA.v"
module FA_4bit(input [3:0] A , [3:0] B , C_0 , output [3:0] S , C);
    wire c1,c2,c3;  
    FA fa1(A[0],B[0],C_0,S[0],c1);
    FA fa2(A[1],B[1],c1,S[1],c2);
    FA fa3(A[2],B[2],c2,S[2],c3);
    FA fa4(A[3],B[3],c3,S[3],C);

endmodule
