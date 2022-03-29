module Half_Substractor_test();
    reg X,Y;
    wire B,D;
    Half_Substractor Comb(.X(X),.Y(Y),.B(B),.D(D));
    initial begin 
        $dumpfile("Half_Substractor.vcd");
        $dumpvars(0,Comb);
        $monitor("%d - %d -> %d %d",X,Y,B,D);
        X=0; Y=0; #5;
        X=0; Y=1; #5;
        X=1; Y=0; #5;
        X=1; Y=1; #5;
        $finish;
    end 
endmodule