module tb_mux4to1;
	
	//ports
	reg in0,in1,in2,in3;
	reg s0,s1;
	
	wire out;
	
	//initialize mux4to1
	mux4to1 mymux(out,in0,in1,in2,in3,s0,s1);
	
	//behavioral
	
	initial
		begin	
			in0 = 1; in1 = 0; in2 = 1; in3 = 0;
			#1 $display("in0= %b, in1= %b, in2= %b, in3= %b\n",in0,in1,in2,in3);
			// choose in0
			s1 = 0; s0 = 0;
			#1 $display("s1 = %b, s0 = %b, out = %b \n", s1, s0, out);
			// choose in1
			s1 = 0; s0 = 1;
			#1 $display("s1 = %b, s0 = %b, out = %b \n", s1, s0, out);
			// choose in2
			s1 = 1; s0 = 0;
			#1 $display("s1 = %b, s0 = %b, out = %b \n", s1, s0, out);
			// choose in3
			s1 = 1; s0 = 1;
			#1 $display("s1 = %b, s0 = %b, out = %b \n", s1, s0, out);
		end
	
endmodule
