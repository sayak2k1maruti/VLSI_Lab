module OR_test();
    reg A,B;
    wire Y;
    OR UUT (.A(A),.B(B),.Y(Y));
    initial begin
        $dumpfile("OR_gate.vcd");
        $dumpvars(0,OR_test);
        $monitor("%d OR  %d -> %d",A,B,Y);
        A=0; B=0;   #5;
        if(Y != 1'b0)    $display("00 failed");
        A=0; B=1;   #5;
        if(Y != 1'b1)    $display("01 failed");
        A=1; B=0;   #5;
        if(Y != 1'b1)    $display("10 failed");
        A=1; B=1;   #5;
        if(Y != 1'b1)    $display("11 failed");
        $finish;
    end
endmodule