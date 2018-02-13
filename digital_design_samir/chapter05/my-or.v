module tb_my_or;
	reg a,b;
	wire out;

	//instantiation
	my_or my_or1(out,a,b);
	
	//start monitoring
	initial
		begin
			$monitor($time," a=%b b=%b or=%b",a,b,out);
		end
		
	initial
		begin
			   a=1'b0;b=1'b0;
			#1 a=1'b0;b=1'b1;
			#1 a=1'b1;b=1'b0;
			#1 a=1'b1;b=1'b1;
			#1 $finish;

		end
	
endmodule



module my_or(out,a,b);

	//ports
	input a,b;
	output out;

	//internal nets
	wire e,f;

	//instantiate primitives
	nand(e,a,a);
	nand(f,b,b);
	nand(out,e,f);


endmodule
