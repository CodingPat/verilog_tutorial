module tb_my_xor;
	reg a,b;
	wire out;

	//instantiation
	my_xor my_xor1(out,a,b);
	
	//start monitoring
	initial
		begin
			$monitor($time,"# a=%b b=%b xor=%b",a,b,out);
		end
		
	initial
		begin
			a=1'b0;b=1'b0;
			#10 a=1'b0;b=1'b1;
			#10 a=1'b1;b=1'b0;
			#10 a=1'b1;b=1'b1;

end


endmodule



module my_xor(out,a,b);

	//ports
	input a,b;
	output out;

	//internal nets
	wire nota,notb,d,e;


	//instantiate our own modules
	my_not #(1) my_not1(nota,a);
	my_not #(1) my_not2(notb,b);
	my_and #(1) my_and1(d,a,notb);
	my_and #(1) my_and2(e,b,nota);
	my_or #(1) my_or1(out,d,e);


endmodule
