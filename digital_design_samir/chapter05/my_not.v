module my_not(out,a);

	//ports
	input a;
	output out;

	//instantiate primitives
	nand(out,a,a);


endmodule
