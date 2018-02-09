module tb_D;

reg a,b,c;
wire out;


//instantiation
D D1(out,a,b,c);

//start monitoring
	initial
		begin
			$monitor($time," --- a=%b b=%b c=%b --- out=%b",a,b,c,out);
		end

//gtkwave 
	initial
	 begin
    $dumpfile("tb_D.vcd");
    $dumpvars(0,tb_D);
	 end

	//stimulate inputs
	initial
		begin
			a=1'b0;b=1'b0;c=1'b0;
			#10 a=1'b1;b=1'b1;c=1'b1;
			#10 a=1'b0;b=1'b1;c=1'b0;
			#20 $finish;
	

		end


endmodule
