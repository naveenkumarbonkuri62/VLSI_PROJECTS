`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:40 02/26/2015 
// Design Name: 
// Module Name:    fa 
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
module fa(
    input a,b,c,
    output s,co
    );
	 
	 assign s = a ^ b ^ c;
	 assign co = (a & b)|(b & c)|(c & a);


endmodule
