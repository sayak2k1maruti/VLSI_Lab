`timescale 1ns / 1ps
module decoder_tb(

    );
    reg [2:0] I;
    wire [7:0] Q;
    Decoder UUT(I,Q);
    integer i;
    initial begin
        for(i=0;i<8;i=i+1) begin
            I = i ; #5;
        end
        $finish;
    end
endmodule
