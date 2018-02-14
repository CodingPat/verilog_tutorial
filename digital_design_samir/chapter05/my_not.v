module tb_my_not;
	reg a;
	wire out;

	//instantiation
	my_not my_not1(out,a);
	
	//start monitoring
	initial
		begin
			$monitor($time," a=%b not=%b",a,out);
		end
		
	//stimulus	
	initial
		begin
			   a=1'b0;
			#1 a=1'b1;
			#1 $finish;

		end
	
endmodule



module my_not(out,a);

	//ports
	input a;
	output out;

	//instantiate primitives
	nand(out,a,a);


endmodule
