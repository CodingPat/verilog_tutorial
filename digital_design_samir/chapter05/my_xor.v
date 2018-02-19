module my_xor(out,a,b);

	//ports
	input a,b;
	output out;

	//internal nets
	wire nota,notb,d,e;


	//instantiate our own modules
	my_not my_not1(nota,a);
	my_not my_not2(notb,b);
	my_and my_and1(d,a,notb);
	my_and my_and2(e,b,nota);
	my_or my_or1(out,d,e);


endmodule
