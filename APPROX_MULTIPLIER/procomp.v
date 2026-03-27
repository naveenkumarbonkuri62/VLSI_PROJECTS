`timescale 1ns / 1ps

module procomp(
    input a,b,c,d,
    output s,carry
    );
	 wire i1,i2,i3,i4,i5,i6;
	 
	 assign i1 = a & b;
	 assign i2 = a | b;
	 assign i3 = c & d;
	 assign i4 = c | d;
	 assign i5 = i1 | i3;
	 assign i6 = i2 & i4;
	 assign s = i2 ^ i4 ^ i5;
	 assign carry = i5 | i6;
	 
	 
	 
endmodule
 
 module procomp_tb();
  reg a,b,c,d;
  wire s,carry;
  	 
	  procomp u1 (a,b,c,d,s,carry );
	  
	  initial
	  begin
	  a = 1'b1;
	  b = 1'b1;
	  c = 1'b1;
	  d = 1'b1;
	  
	   end
	  endmodule
	  


