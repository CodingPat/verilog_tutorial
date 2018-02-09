module my-or(a,b,out);

	//ports
	input a,b;
	output out;

	//internal nets
	wire e,f

	//instantiate primitives
	nand(e,a,a);
	nand(f,b,b);
	nand(out,e,f);


endmodule
