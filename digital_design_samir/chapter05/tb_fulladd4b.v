module tb_fulladd;
	//ports
	reg [3:0]a,b;
	reg c_in;
	wire [3:0]sum;
	wire c_out;

	//instantiate fulladd
	fulladd4b myfulladd(sum,c_out,a,b,c_in);

	//simulate

	//start monitoring
	initial
		begin
			$monitor($time," --- a=%b b=%b c=%b --- sum=%b c_out=%b",a,b,c_in,sum,c_out);
		end

	//stimulate inputs
	initial
		begin
			a=4'd0;b=4'd0;c_in=0;
			#5 a=4'd0;b=4'd15;c_in=1;
			#5 a='b1100;b='b0011;c_in=0;
			#5 a='b1100;b='b0011;c_in=1;
			#5 a='b1111;b='b1111;c_in=0;
			#5 a='b1111;b='b1111;c_in=1;
		end


endmodule
