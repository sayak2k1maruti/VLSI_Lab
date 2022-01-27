`timescale 1ns/1ns
module comb_test();
	reg X,Y,Z;
	wire Out;
	comb c1 (Out,X,Y,Z);
	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0,comb_test);
		$monitor("%d %d %d -> %d",X,Y,Z,Out);
		#0 X = 0; Y = 0; Z = 0;
		#2 X = 0; Y = 0; Z = 0;
		#2 X = 0; Y = 0; Z = 1;
		#2 X = 0; Y = 1; Z = 0;
		#2 X = 0; Y = 1; Z = 1;
		#2 X = 1; Y = 0; Z = 0;
		#2 X = 1; Y = 0; Z = 1;
		#2 X = 1; Y = 1; Z = 0;
		#2 X = 1; Y = 1; Z = 1;
		#2 X = 1; Y = 0; Z = 0;
		#2 X = 0; Y = 0; Z = 1;
		#5 $finish;
	end
endmodule
