module Full_Adder_test();
    reg X,Y,Z;
    wire C,S;
    Full_Adder Comb(.X(X),.Y(Y),.Z(Z),.S(S),.C(C));
    initial begin 
        $dumpfile("Full_Adder.vcd");
        $dumpvars(0,Comb);
        $monitor("%d + %d + %d-> %d %d",X,Y,Z,C,S);
        X=0; Y=0; Z=0; #5;
        X=0; Y=0; Z=1; #5;
        X=0; Y=1; Z=0; #5;
        X=0; Y=1; Z=1; #5;
        X=1; Y=0; Z=0; #5;
        X=1; Y=0; Z=1; #5;
        X=1; Y=1; Z=0; #5;
        X=1; Y=1; Z=1; #5;
        $finish;
    end 
endmodule