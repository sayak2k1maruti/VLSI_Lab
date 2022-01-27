module Half_Adder(Sum,Carry,X,Y);
	//declaration
	input X,Y;
	output Sum,Carry;
	//Instantiation
	xor G1(Sum,X,Y);
	and G2(Carry,X,Y);
endmodule
	
