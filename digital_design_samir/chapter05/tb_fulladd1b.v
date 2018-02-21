module tb_fulladd1b;
wire SUM,C_OUT;
reg A,B,C_IN;

//instantiation
fulladd1b fa1(SUM,C_OUT,A,B,C_IN);

//monitoring
	
initial
	begin
		$monitor($time," A=%b B=%b C_IN=%b SUM=%b C_OUT=%b",A,B,C_IN,SUM,C_OUT);
	end

//stimulus
initial
	begin
	A=1'b0;B=1'b0;C_IN=1'b0;
	#1 A=1'b0;B=1'b0;C_IN=1'b1;
	#1 A=1'b0;B=1'b1;C_IN=1'b0;
	#1 A=1'b0;B=1'b1;C_IN=1'b1;
	#1 A=1'b1;B=1'b0;C_IN=1'b0;
	#1 A=1'b1;B=1'b0;C_IN=1'b1;
	#1 A=1'b1;B=1'b1;C_IN=1'b0;
	#1 A=1'b1;B=1'b1;C_IN=1'b1;

	end





endmodule
