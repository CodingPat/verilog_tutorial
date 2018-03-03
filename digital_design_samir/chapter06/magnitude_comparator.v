module magnitude_comparator(A_gt_B,A_lt_B,A_eq_B,A,B);
	//ports
	output A_gt_B,A_lt_B,A_eq_B;
	input [3:0] A,B;
		
	//internal nets
	wire [3:0]x;
	
	//dataflow assignments
	assign x=(A&B)|(~A&~B);
	assign A_gt_B=(A[3]&&!B[3])||(x[3]&&A[2]&&!B[2])||(x[3]&&x[2]&&A[1]&&!B[1])||(x[3]&&x[2]&&x[1]&&A[0]&&!B[0]);
	assign A_lt_B=(!A[3]&&B[3])||(x[3]&&!A[2]&&B[2])||(x[3]&&x[2]&&!A[1]&&B[1])||(x[3]&&x[2]&&x[1]&&!A[0]&&B[0]);
	assign A_eq_B=&x;
	
endmodule