`timescale 1ns/1ns
module Half_Adder_Test();
	reg X,Y;
	wire Sum,Carry;
	Half_Adder HF (Sum,Carry,X,Y);
	initial begin
		$dumpfile("output.vcd");
		$dumpvars(0,Half_Adder_Test);
		$monitor("%d %d -> %d %d",X,Y,Carry,Sum);
		#0 X = 0; Y = 0;
		#2 X = 0; Y = 0;
		#2 X = 0; Y = 1;
		#2 X = 1; Y = 0;
		#2 X = 1; Y = 1;
		#5 $finish;
	end
endmodule
