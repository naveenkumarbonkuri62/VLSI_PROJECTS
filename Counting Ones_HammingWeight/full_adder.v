`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 21:26:37
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    input a, b, cin,
    output sum, cout
);
    wire s1, c1, c2;

    xor (s1, a, b);
    and (c1, a, b);

    xor (sum, s1, cin);
    and (c2, s1, cin);

    or  (cout, c1, c2);
endmodule

