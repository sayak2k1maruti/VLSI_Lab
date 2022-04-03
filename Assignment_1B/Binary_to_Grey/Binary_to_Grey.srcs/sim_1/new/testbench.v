`timescale 1ns / 1ps
module testbench();
    reg [2:0] B ;
    wire [2:0] G;
    B_to_G UUT(B,G);
    integer b;
    initial begin
       $monitor("%d %d %d -> %d %d %d",B[2],B[1],B[0],G[2],G[1],G[0]);
       for(b=0;b<8;b=b+1) begin
            B = b; #5;
       end
        $finish; #5;
    end
endmodule
