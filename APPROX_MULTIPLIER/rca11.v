`timescale 1ns / 1ps

//
//////////////////////////////////////////////////////////////////////////////////
module rca7(
    input [6:0] a,b,
    output [6:0] s,
    output c
    );
   
	
	ha u1 (a[0],b[0],s[0],c1);
	fa u2 (a[1],b[1],c1,s[1],c2);
	fa u3 (a[2],b[2],c2,s[2],c3);
	fa u4 (a[3],b[3],c3,s[3],c4);
	fa u5 (a[4],b[4],c4,s[4],c5);
	fa u6 (a[5],b[5],c5,s[5],c6);
	fa u7 (a[6],b[6],c6,s[6],c);
	
	
	
	

endmodule
