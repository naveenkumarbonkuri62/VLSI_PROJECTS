`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:55 02/19/2013 
// Design Name: 
// Module Name:    rca 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rca0(a,b, cin, s, co);
    input [1:0] a,b;
    input cin;
    output [1:0] s;
    output co;
	 wire i1;
   fa u1 (a[0],b[0],cin,s[0],i1);
	fa u2 (a[1],b[1],i1,s[1],co);

endmodule
