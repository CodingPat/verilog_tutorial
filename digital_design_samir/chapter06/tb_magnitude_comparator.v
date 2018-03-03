module tb_magnitude_comparator;
	//ports
	reg [3:0] A,B;
	wire A_gt_B,A_lt_B,A_eq_B;
	
	//initialisation module
	magnitude_comparator mc1(A_gt_B,A_lt_B,A_eq_B,A,B);
	
	//monitoring
	initial
		begin
			$monitor($time," - A=%b B=%b A_gt_B=%b A_lt_B=%b A_eq_B=%b",A,B,A_gt_B,A_lt_B,A_eq_B);
		end
	
	//stimulus
	initial
		begin
			A=4'b0001;B=4'b0010;
			#1 A=4'd2;B=4'd1;
		end

endmodule
