`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 21:21:43
// Design Name: 
// Module Name: CountingOne_GateLevel
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


module CountingOne_GateLevel(
    input  [7:0] in,
    output [3:0] out
);

    // Level 1: pairwise add
    wire s0, c0, s1, c1, s2, c2, s3, c3;

    half_adder ha0(in[0], in[1], s0, c0);
    half_adder ha1(in[2], in[3], s1, c1);
    half_adder ha2(in[4], in[5], s2, c2);
    half_adder ha3(in[6], in[7], s3, c3);

    // Level 2
    wire s4, c4, s5, c5;

    full_adder fa0(s0, s1, c0, s4, c4);
    full_adder fa1(s2, s3, c2, s5, c5);

    // Level 3
    wire s6, c6, c7;

    full_adder fa2(s4, s5, c4, s6, c6);
    full_adder fa3(c1, c3, c5, out[1], c7);

    // Final output
    assign out[0] = s6;
    assign out[2] = c6 ^ c7;
    assign out[3] = c6 & c7;

endmodule

