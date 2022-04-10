`timescale 1ns / 1ps
module ha_tb();
    reg X,Y ;
    wire S,C;
    half_adder UUT (X,Y,S,C);
    initial begin
        $monitor("%d %d  -> %d %d",X,Y,C,S);
        X = 0; Y = 0; #5;
        X = 0; Y = 1; #5;
        X = 1; Y = 0; #5;
        X = 1; Y = 1; #5;
        $finish;
    end
endmodule
