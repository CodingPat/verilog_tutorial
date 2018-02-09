module tb_my-or;
	reg a,b;
	wire out;

	//instantiate
	my-or my-or1(out,a,b);

	//start monitoring
	initial
		begin
			$monitor($time," --- a=%b b=%b --- out=%b",a,b,out);
		end
	//stimulus inputs
	initial
		begin
			a=1'b0;b=1'b0;
			#1 a=1'b0;b=1'b1;
			#1 a=1'b1;b=1'b0;
			#1 a=1'b1;b=1'b1;
			#1 $finish;

		end


endmodule
