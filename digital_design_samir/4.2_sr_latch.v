module sr_latch (sbar,rbar,q,qbar);

//ports
input sbar,rbar;
output q,qbar;

//instantions modules
nand n1(q, sbar, qbar);
nand n2(qbar, rbar, q);

endmodule


module tb_sr_latch;
//ports
output set,reset;
input q,qbar;

// regs and variables (implicit=wire, reg hold values)
reg set,reset; 


//instantiation
sr_latch sr1(~set,~reset,q,qbar);

//behavioral
initial
	begin
		$dumpfile("waves.vcd");
		$dumpvars(0,test);



		$monitor($time,"set=%b , reset=%b, q=%b, ~q=%b\n",set,reset,q,qbar);
		reset=0;set=1;
		#5 reset=1;set=0;
		#5 reset=0;set=1;

	end



endmodule


