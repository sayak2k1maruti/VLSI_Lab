`timescale 1ns / 1ps
module testbench();
    reg [2:0] I;
    wire Q;
    Parity_Checker_8bit UUT(I,Q);
    integer i;
    initial begin
        $monitor("%d %d %d  -> %d",I[2],I[1],I[0] , Q);
        for(i=0;i<8;i=i+1) begin
            I = i; #5;
        end
        $finish ; #5;
    end
endmodule
