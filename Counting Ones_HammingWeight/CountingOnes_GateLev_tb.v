`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 21:24:06
// Design Name: 
// Module Name: CountingOnes_GateLev_tb
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


module CountingOnes_GateLev_tb;
    reg [7:0] in;
    wire [3:0] out;

    CountingOne_GateLevel uut(.in(in), .out(out));

    initial begin
        in = 8'b10101010;
        #1 $display("in=%b => Hamming weight=%d", in, out);

        in = 8'b11110000;
        #1 $display("in=%b => Hamming weight=%d", in, out);

        in = 8'b11111111;
        #1 $display("in=%b => Hamming weight=%d", in, out);

        #10 $finish;
    end
endmodule

