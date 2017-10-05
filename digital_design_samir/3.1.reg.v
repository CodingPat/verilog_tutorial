module register;

reg reset; 
reg [8*18:1] string_value;

initial 
	begin
		string_value="Hello verilog world";
		reset = 1'b1; //initialize reset to 1 to reset the digital circuit.
		#100 reset = 1'b0; // after 100 time units reset is deasserted.
	end

//monitor
initial
		begin
			$display("Hello verilog world");
			$monitor($time, " reset = %d",reset);
		end
		
	
endmodule


