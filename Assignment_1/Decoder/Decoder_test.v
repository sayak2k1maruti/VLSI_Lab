module Decoder_test();
    reg A,B;
    wire Q0,Q1,Q2,Q3;
    Decoder Comb(.A(A),.B(B),.Q0(Q0),.Q1(Q1),.Q2(Q2),.Q3(Q3));
    initial begin 
        $dumpfile("Decoder.vcd");
        $dumpvars(0,Comb);
        $monitor("%d   %d-> %d %d %d %d",A,B,Q0,Q1,Q2,Q3);
        A=0;B=0; #5
        A=0;B=1; #5
        A=1;B=0; #5
        A=1;B=1; #5
        $finish;
    end 
endmodule