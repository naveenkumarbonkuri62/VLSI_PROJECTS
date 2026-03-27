`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:27 02/19/2013 
// Design Name: 
// Module Name:    mux1 
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
module mux1(a,b, s, y);
    input [3:0] a,b;
    input s;
    output [3:0] y;
  reg [3:0] y;
  always@(s or a or b)
  if(s == 1'b0)
  y = a;
  else
  y = b;


endmodule
