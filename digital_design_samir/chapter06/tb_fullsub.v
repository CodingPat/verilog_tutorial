module tb_fullsub;
	
	reg x,y,z;
	wire D,B;

	fullsub fs1(D,B,x,y,z);

	initial
		begin
			$monitor($time," - x=%b y=%b z=%b B=%b D=%b",x,y,z,B,D);
		end

	initial
		begin
		x=1'b0;y=1'b0;z=1'b0;
		#1 x=1'b0;y=1'b0;z=1'b1;
		#1 x=1'b0;y=1'b1;z=1'b0;
		#1 x=1'b0;y=1'b1;z=1'b1;
		#1 x=1'b1;y=1'b0;z=1'b0;
		#1 x=1'b1;y=1'b0;z=1'b1;
		#1 x=1'b1;y=1'b1;z=1'b0;
		#1 x=1'b1;y=1'b1;z=1'b1;

		end

endmodule
