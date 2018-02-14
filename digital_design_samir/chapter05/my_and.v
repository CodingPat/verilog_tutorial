module tb_my_and;
	reg a,b;
	wire out;

	//instantiation
	my_and my_and1(out,a,b);
	
	//start monitoring
	initial
		begin
			$monitor($time," a=%b b=%b and=%b",a,b,out);
		end
		
	//stimulus	
	initial
		begin
			   a=1'b0;b=1'b0;
			#1 a=1'b0;b=1'b1;
			#1 a=1'b1;b=1'b0;
			#1 a=1'b1;b=1'b1;
			#1 $finish;

		end
	
endmodule



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
