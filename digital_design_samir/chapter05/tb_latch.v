module tb_latch;

	reg RESET,SET;
	wire Q,QBAR;

	//initialize module
	latch l1(Q,QBAR,RESET,SET);

	//monitoring
	initial
		begin
			$monitor($time," set=%b reset=%b q=%b notq=%b",SET,RESET,Q,QBAR);
		end

	//gtkwave 
	initial
	 begin
    $dumpfile("tb_latch.vcd");
    $dumpvars(0,tb_latch);
	 end


	//stimulus
	// comment 
	// 		tb_latch has 2 nor primitives with each #1 delay. 
	// 		to get a stabilized result, you have to wait #2 periods
	initial
		begin
			SET=1'b0;RESET=1'b0;
			#2 SET=1'b1;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b1;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b1;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b0;
			#2 SET=1'b1;RESET=1'b0;
			#2 SET=1'b0;RESET=1'b0;
			#2 $finish;

			
			
		end


endmodule
