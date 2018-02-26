module tb_mux2to1;
	reg IN0,IN1,S;
	wire out;

	//instantiation
	mux2to1 m1(OUT,IN0,IN1,S);

	//monitoring
	initial
		begin
			$monitor($time,"IN0=%b IN1=%b S=%b OUT=%b",IN0,IN1,S,OUT);
		end

	//gtkwave
	initial
		begin
			$dumpfile("tb_mux2to1.vcd");
			$dumpvars(0,tb_mux2to1);
		end


	//stimulus
	initial
		begin
			IN0=1'b0;IN1=1'b0;S=1'b0;
			#10 IN0=1'b0;IN1=1'b0;S=1'b1;
			#10 IN0=1'b0;IN1=1'b1;S=1'b0;
			#10 IN0=1'b0;IN1=1'b1;S=1'b1;
			#10 IN0=1'b1;IN1=1'b0;S=1'b0;
			#10 IN0=1'b1;IN1=1'b0;S=1'b1;
			#10 IN0=1'b1;IN1=1'b1;S=1'b0;
			#10 IN0=1'b1;IN1=1'b1;S=1'b1;


		end


endmodule
