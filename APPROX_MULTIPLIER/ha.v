`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:14 02/26/2015 
// Design Name: 
// Module Name:    ha 
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
module ha(
    input a,b,
    output s,co
    );
	 
	 assign s = a ^ b;
	 assign co = a & b;


endmodule
