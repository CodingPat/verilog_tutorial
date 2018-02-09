module D(out,a,b,c);

//Ports
output out;
input a,b,c;

//Internal nets
wire e;

//Instantiations primitives
and #(5) (e,a,b);
or #(4) (out,e,c);

endmodule
