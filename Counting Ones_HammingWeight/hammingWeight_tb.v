`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 20:53:18
// Design Name: 
// Module Name: hammingWeight_tb
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

//Behavioural modeling
module hammingWeight_tb;
    reg [7:0] in;
    wire [3:0] out;
    hammingWeight uut(.in(in),.out(out));
    initial begin
        in=8'b10101010;
        #1;
        $display("in=%b => Hamming weight=%d",in,out);
        in=8'b11110000;
        $display("in=%b => Hamming weight=%d",in,out);
        #10 $finish;
        end
endmodule
