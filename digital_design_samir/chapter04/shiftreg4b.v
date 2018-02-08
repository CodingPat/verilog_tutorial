module tb_shiftreg4b;

reg [3:0] REG_IN;
reg CLK;
wire [3:0] REG_OUT;

//instantiation
shiftreg4b sr1(REG_OUT,REG_IN,CLK);


endmodule


module shiftreg4b(reg_out,reg_in,clock);

//ports
input [3:0] reg_in;
input clock;
output reg [3:0] reg_out;


endmodule


