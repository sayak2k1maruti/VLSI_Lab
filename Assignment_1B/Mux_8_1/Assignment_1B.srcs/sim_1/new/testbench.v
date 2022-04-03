`timescale 1ns / 1ps
module testbench();
    reg [7:0] I ;
    reg  [2:0] S ;
    wire  Q;
    integer i = 0;
    integer s = 0;
    Mux_8_1 UUT(I,S,Q);
    initial begin
        $monitor("%d%d%d%d%d%d%d%d   %d %d %d   -> %d",I[7],I[6],I[5],I[4],I[3],I[2],I[1],I[0],S[2],S[1],S[0],Q);
        for(i=0;i<256;i=i+1) begin
            I = i;
            for(s=0;s<8;s=s+1) begin
                S = s; #5;
            end
       end
        $finish;#5;
    end
endmodule
