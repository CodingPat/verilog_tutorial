module latch(q,qbar,reset,set);
	output q,qbar;
	input reset,set;

	//instantiate primitives
	nor #(1)(q,reset,qbar);
	nor #(1)(qbar,set,q);



endmodule
