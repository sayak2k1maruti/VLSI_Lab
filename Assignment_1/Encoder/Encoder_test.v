module Encoder_test();
    reg Q0,Q1,Q2,Q3;
    wire A,B;
    Encoder Comb(.Q0(Q0),.Q1(Q1),.Q2(Q2),.Q3(Q3),.A(A),.B(B));
    initial begin 
        $dumpfile("Encoder.vcd");
        $dumpvars(0,Comb);
        $monitor("%d %d %d %d -> %d   %d",Q3,Q2,Q1,Q0,A,B);
        Q3=0;Q2=0;Q1=0;Q0=1; #5
        Q3=0;Q2=0;Q1=1;Q0=0; #5
        Q3=0;Q2=1;Q1=0;Q0=0; #5
        Q3=1;Q2=0;Q1=0;Q0=0; #5
        $finish;
    end 
endmodule