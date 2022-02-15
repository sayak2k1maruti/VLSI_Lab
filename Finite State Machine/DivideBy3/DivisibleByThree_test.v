`timescale 1ns/1ns
module DivisibleByThree_test();
	reg clk,RESET;
	wire Q;
	DivisibleByThree D3(.clk(clk),.RESET(RESET),.Q(Q));
	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0,DivisibleByThree_test);
		$monitor("%d %d-> %d",clk , RESET , Q );
		#0 clk = 1; RESET = 1;
		#2 clk = 0; RESET = 0; 
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0; 
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        #2 clk = 0; RESET = 0;
        #2 clk = 1; RESET = 0;
        $finish;
	end
endmodule
