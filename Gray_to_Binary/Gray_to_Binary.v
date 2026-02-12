`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2026 22:07:45
// Design Name: 
// Module Name: Gray_to_Binary
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


module Gray_to_Binary #(
    parameter N=4 // number of bits
)(
    input [N-1:0] gray,
    output [N-1:0] binary
    );
    
    integer i;
    assign binary[N-1] = gray[N-1]; //MSB same
    
    //XOR chain conversion
    generate 
        genvar j;
        for(j=N-2; j>=0; j=j-1)
        begin : gray2bin
            assign binary[j] = binary[j+1] ^ gray[j];
            end
          endgenerate
endmodule
