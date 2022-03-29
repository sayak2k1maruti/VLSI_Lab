module Half_Adder_test();
    reg X,Y;
    wire C,S;
    Half_Adder Comb(.X(X),.Y(Y),.S(S),.C(C));
    initial begin 
        $dumpfile("Half_Adder.vcd");
        $dumpvars(0,Comb);
        $monitor("%d + %d -> %d %d",X,Y,C,S);
        X=0; Y=0; #5;
        if(S!=0 || C!=0)  $display("00 failed");
        X=0; Y=1; #5;
        if(S!=1 || C!=0)  $display("01 failed");
        X=1; Y=0; #5;
        if(S!=1 || C!=0)  $display("10 failed");
        X=1; Y=1; #5;
        if(S!=0 || C!=1)  $display("11 failed");
        
        $finish;
    end 
endmodule