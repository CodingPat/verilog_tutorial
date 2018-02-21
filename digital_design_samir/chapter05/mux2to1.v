module mux2to1(out,in0,in1,s);

//ports
output out;
input in0,in1,s;

//instantiation primitives
bufif1 #(1:2:3,3:4:5,5:6:7)(out,in0,s);
bufif0 #(1:2:3,3:4:5,5:6:7)(out,in1,s);

endmodule

