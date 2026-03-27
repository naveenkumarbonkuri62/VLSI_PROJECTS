`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//
//////////////////////////////////////////////////////////////////////////////////
module adder7(a,b, cin, s, co);
    input [6:0] a,b;
    input cin;
    output [6:0] s;
    output co;
	 wire i1,i2,i3,i4,i5,i6,i7,i8,i9,k1,k2,k3;
	 wire [2:0]x1,y1,z1;
	 wire [3:0]x2,y2,z2;
	 wire [4:0]x3,y3,z3;
	 wire [5:0] x4,y4,z4;
	 wire [1:0] u1,u2;
	 wire [2:0] u3,u4;
	 wire [3:0] u5,u6;
	 wire [4:0] u7,u8;
   rca0 ut1 (a[1:0],b[1:0],cin,s[1:0],i1);
	rca0 ut2 (a[3:2],b[3:2],1'b0,u1[1:0],i2);
	rca0 ut3 (a[3:2],b[3:2],1'b1,u2[1:0],i3);
	rca11 ut4 (a[6:4],b[6:4],1'b0,u3[2:0],i4);
	rca11 ut5 (a[6:4],b[6:4],1'b1,u4[2:0],i5);
   
	assign x1[2] = i2,
	       x1[1:0] = u1[1:0];
	assign y1[2] = i3,
	        y1[1:0] = u2[1:0];
	assign x2[3] = i4,
	       x2[2:0] = u3[2:0];
	assign y2[3] = i5,
	        y2[2:0] = u4[2:0];
	
	
	mux u10 (x1[2:0],y1[2:0],i1,z1[2:0]);
	mux1 u11 (x2[3:0],y2[3:0],k1,z2[3:0]);
	
	
	assign k1 = z1[2];
	     assign    s[6:4] = z2[2:0],
		           s[3:2] = z1[1:0];
	             
					  
					 
					  
	assign co = z2[3];
	       
	
	

	
endmodule

module adder7_tb();
    reg [6:0] a,b;
    reg cin;
    wire [6:0] s;
    wire co;
	 
	 adder7 u1 (a,b, cin, s, co);
	 
	 initial
	 begin
	 a = 7'b1110000;
	 b = 7'b0011111;
	 cin = 1'b0;
	 #100 a = 7'b111111;
	 end
	 endmodule
	 
