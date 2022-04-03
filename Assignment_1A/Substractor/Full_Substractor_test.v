module Full_Substractor_test();
    reg X,Y,Z;
    wire D,B;
    Full_Substractor Comb(.X(X),.Y(Y),.Z(Z),.D(D),.B(B));
    initial begin 
        $dumpfile("Full_Substractor.vcd");
        $dumpvars(0,Comb);
        $monitor("%d - %d - %d-> %d %d",X,Y,Z,B,D);
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