module my_or(out,a,b);

	//ports
	input a,b;
	output out;

	//internal nets
	wire d,e;


	//instantiate primitives
	nand(d,a,a);
	nand(e,b,b);
	nand(out,d,e);


endmodule
