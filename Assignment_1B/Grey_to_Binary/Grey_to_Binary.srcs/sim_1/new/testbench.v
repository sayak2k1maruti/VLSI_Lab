`timescale 1ns / 1ps
module testbench();
    reg [2:0] G;
    wire [2:0] B;
    G_to_B UUT(G,B);
    initial begin
        $monitor("%d%d%d  ->   %d%d%d",G[2],G[1],G[0],B[2],B[1],B[0]);
        G = 3'b000; #5
        G = 3'b001; #5
        G = 3'b011; #5
        G = 3'b010; #5
        G = 3'b110; #5
        G = 3'b111; #5
        G = 3'b101; #5
        G = 3'b100; #5
        $finish; #5;     
    end
endmodule
