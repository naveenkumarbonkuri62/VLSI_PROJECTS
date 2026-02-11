`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 20:32:04
// Design Name: 
// Module Name: hammingWeight
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

//Behavioural Modeling
module hammingWeight(
    input [7:0] in,output reg [3:0] out
    );
    integer i;
    always @(*) begin
        out =0;
        for(i=0;i<8;i=i+1)
        begin 
            if(in[i] == 1'b1)
                out=out+1;
        end
    end
endmodule
