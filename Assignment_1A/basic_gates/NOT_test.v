module NOT_test();
    reg X;
    wire Y;
    NOT Comb(.X(X),.Y(Y));
    initial begin
        $dumpfile("NOT_wave.vcd");
        $dumpvars(0,Comb);
        $monitor("NOT %d -> %d",X,Y);
        X=0; #5
        if(Y!=1'b1) $display("NOT 0 failed");
        X=1; #5
        if(Y!=1'b0) $display("NOT 1 failed");
        $finish;
    end
endmodule