`timescale 1ns / 1ps
module G_to_B(
    input [2:0] G,
    output [2:0] B
    );
    assign B[2] = G[2];
    assign B[1] = G[2] ^ G[1];
    assign  B[0] = G[2] ^ G[1] ^ G[0];
endmodule
