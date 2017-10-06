module tb_fulladd;
	//ports
	reg a,b,c_in;
	wire sum,c_out;

	//instantiate fulladd
	fulladd myfulladd(a,b,c_in,sum,c_out);

	//simulate
	initial
		begin
			a=0;b=0;c_in=0;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);
			a=0;b=0;c_in=1;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);
			a=0;b=1;c_in=0;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);
			a=0;b=1;c_in=1;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);
			a=1;b=0;c_in=0;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);
			a=1;b=0;c_in=1;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);
			a=1;b=1;c_in=0;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);
			a=1;b=1;c_in=1;
			#1 $display("a=%b b=%b c=%b sum=%b c_out=%b",a,b,c_in,sum,c_out);

		end


endmodule
