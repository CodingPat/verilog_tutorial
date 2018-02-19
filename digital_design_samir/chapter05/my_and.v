module my_and(out,a,b);

	//ports
	input a,b;
	output out;

	//internal nets
	wire c;

	//instantiate primitives
	nand(c,a,b);
	nand(out,c,c);


endmodule
