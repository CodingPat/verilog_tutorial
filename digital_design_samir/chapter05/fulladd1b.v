module fulladd1b(sum,c_out,	a,b,c_in);
output sum,c_out;
input a,b,c_in;

//internal nets
wire d,e,f,g,h,i,j;

//instantiations primitives

//sum
and(d,a,b,c_in);
and(e,~a,b,~c_in);
and(f,~a,~b,c_in);
and(g,a,~b,~c_in);
or(sum,d,e,f,g);

//c_out
and(h,a,b);
and(i,b,c_in);
and(j,a,c_in);
or(c_out,h,i,j);

endmodule

