`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//
//////////////////////////////////////////////////////////////////////////////////
module compressor(
    input a,b,c,d,cin,
    output s,carry,co
    );
	wire s1;
   xor1 u1 (a,b,i1);
	 xor1 u2 (c,d,i2);
	 mux u3 (a,c,i2,co);
	 xor1 u4 (i1,i2,i3);
	 xor1 u5 (cin,i3,s);
	 mux u6 (a,cin,i3,carry);

endmodule
