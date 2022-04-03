`timescale 1ns / 1ps
module testbench();
    reg [1:0] A ; 
    reg [1:0] B ;
    wire Q2,Q1,Q0;
    Comparator_2_bit UUT(A,B,Q2,Q1,Q0);
    integer a,b;
    initial begin
        $monitor("%d %d   -> %d %d %d",A,B,Q2,Q1,Q0);
        for(a=0;a<4;a=a+1) begin
            A = a;
            for(b=0;b<4;b=b+1) begin
                B = b; #5;
            end
        end
        $finish;
    end
endmodule
