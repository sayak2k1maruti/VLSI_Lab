module AND_test();
    reg A,B;
    wire Y;
    AND UUT (.A(A),.B(B),.Y(Y));
    initial begin
        $dumpfile("AND_gate.vcd");
        $dumpvars(0,AND_test);
        $monitor("%d AND  %d -> %d",A,B,Y);
        A=0; B=0;   #5;
        if(Y != A&B)    $display("00 failed");
        A=0; B=1;   #5;
        if(Y != A&B)    $display("01 failed");
        A=1; B=0;   #5;
        if(Y != A&B)    $display("10 failed");
        A=1; B=1;   #5;
        if(Y != A&B)    $display("11 failed");
        $finish;
    end
endmodule