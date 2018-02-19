module tb_my_xor;
	reg A,B;
	wire OUT;

	
	//instantiation
	my_xor x1(OUT,A,B);
		
//stimulate inputs
	initial
		begin
			A=1'b0;B=1'b0;
			#10 A=1'b0;B=1'b1;
			#10 A=1'b1;B=1'b0;
			#10 A=1'b1;B=1'b1;
			#10 $finish;
		end

//start monitoring
	initial
		begin
			$monitor($time,"# A=%b B=%b OUT=%b",A,B,OUT);
		end

endmodule

