module fullsub(D,B,x,y,z);
	// ports	
	output D,B;
	input x,y,z;

	//dataflow

	assign D=(~x&~y&z)||(~x&y&~z)||(x&~y&~z)||(x&y&z);
	assign B=(~x&y)||(~x&z)||(y&z);

endmodule
