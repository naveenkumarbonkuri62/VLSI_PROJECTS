`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2026 22:15:35
// Design Name: 
// Module Name: Gray_to_Binary_tb
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


module Gray_to_Binary_tb;

    reg  [3:0] gray;
    wire [3:0] binary;

    Gray_to_Binary #(4) uut (
        .gray(gray),
        .binary(binary)
    );

    initial begin
        $monitor("Gray = %b -> Binary = %b", gray, binary);

        gray = 4'b0000; #10;
        gray = 4'b0001; #10;
        gray = 4'b0011; #10;
        gray = 4'b0010; #10;
        gray = 4'b0110; #10;
        gray = 4'b0111; #10;

        $finish;
    end

endmodule

