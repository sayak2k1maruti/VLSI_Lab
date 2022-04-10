`timescale 1ns / 1ps
module fa_tb();
    reg [3:0] A ;
    reg [3:0] B ;
    reg C_0 ; 
    wire [3:0] S ;
    wire C;
    integer a,b;
    FA_4bit UUT (A,B,C_0,S,C);
    initial begin
        $monitor ("%d + %d + %d --> %d",A,B,C_0,16*C+S);
        C_0 = 0;
        for(a=0;a<16;a=a+1) begin
            A = a;
            for(b=0;b<16;b=b+1) begin;
                B = b; #2;
             end
        end
                C_0 = 1;
        for(a=0;a<16;a=a+1) begin
            A = a;
            for(b=0;b<16;b=b+1) begin;
                B = b; #2;
             end
        end
        $finish;
    end
endmodule
