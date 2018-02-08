module fulladd(sum,c_out,a,b,c_in);

	//ports
	input a,b,c_in;
	output sum,c_out;

	//internal wires
	wire s1,c1,s2;

	//gates instantiations
	xor(s1,a,b);
	and(c1,a,b);
	xor(sum,s1,c_in);
	and(s2,s1,c_in);
	xor(c_out,s2,c1);




endmodule
