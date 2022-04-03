`timescale 1ns / 1ps
module testbench();
    reg I;
    reg [1:0]  S;
    wire [3:0] Q;
    Demux_1_4 UUT(I,S,Q);
    initial begin
        $monitor("%d     %d %d -> %d %d %d %d",I,S[1],S[0],Q[3],Q[2],Q[1],Q[0]);
        I = 0; S = 2'b00 ; #5
        I = 0; S = 2'b01 ; #5
        I = 0; S = 2'b10 ; #5
        I = 0; S = 2'b11 ; #5
        I = 1; S = 2'b00 ; #5
        I = 1; S = 2'b01 ; #5
        I = 1; S = 2'b10 ; #5
        I = 1; S = 2'b11 ; #5
        $finish; #5;
    end
endmodule
