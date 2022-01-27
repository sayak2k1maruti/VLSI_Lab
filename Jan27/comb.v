module comb(Out,X,Y,Z);
	//Declaration
	input X,Y,Z;
	output Out;
	wire nand_w1,nand_w2,or_w,not_w;
	//Instantiation
	nand n1(nand_w1,X,Y);
	nand n2(nand_w2,Y,X);
	or o(or_w,nand_w1,nand_w2);
	not n(not_w,Z);
	and a(Out,not_w,or_w);
endmodule
