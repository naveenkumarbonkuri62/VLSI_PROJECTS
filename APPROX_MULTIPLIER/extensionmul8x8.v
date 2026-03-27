`timescale 1ns / 1ps

module extensionmultipler8x8(
    input [7:0] a,b,
	 output [15:0] p
    );
	wire i1,i2,i3,i4,i5,i6,i7,i8,i9;
	 wire [6:0] w,q;
	 assign p[0] = a[0] & b[0];
	 assign i1 = a[1] & b[0];
	 assign i2 = a[0] & b[1];
	 assign i3 = a[2] & b[0];
	 assign i4 = a[1] & b[1];
	 assign i5 = a[0] & b[2];	
    assign i6 = a[3] & b[0];
    assign i7 = a[2] & b[1];
    assign i8 = a[1] & b[2];
    assign i9 = a[0] & b[3];	
    assign i10 = a[4] & b[0];
    assign i11 = a[3] & b[1]; 	
    assign i12 = a[2] & b[2]; 
    assign i13 = a[1] & b[3]; 
    assign i14 = a[0] & b[4]; 
    assign i15 = a[5] & b[0]; 
    assign i16 = a[4] & b[1]; 
    assign i17 = a[3] & b[2]; 
    assign i18 = a[2] & b[3]; 
    assign i19 = a[1] & b[4]; 
	 assign i20 = a[0] & b[5];
    assign i21 = a[6] & b[0]; 	
    assign i22 = a[5] & b[1]; 
    assign i23 = a[4] & b[2]; 
    assign i24 = a[3] & b[3]; 
    assign i25 = a[2] & b[4]; 
    assign i26 = a[1] & b[5]; 
    assign i27 = a[0] & b[6]; 
    assign i28 = a[7] & b[0]; 
    assign i29 = a[6] & b[1];
    assign i30 = a[5] & b[2];
    assign i31 = a[4] & b[3]; 	
    assign i32 = a[3] & b[4]; 
    assign i33 = a[2] & b[5]; 
    assign i34 = a[1] & b[6]; 
    assign i35 = a[0] & b[7]; 
    assign i36 = a[7] & b[1]; 
    assign i37 = a[6] & b[2]; 
    assign i38 = a[5] & b[3]; 
    assign i39 = a[4] & b[4]; 
    assign i40 = a[3] & b[5];
    assign i41 = a[2] & b[6]; 	
    assign i42 = a[1] & b[7]; 
    assign i43 = a[7] & b[2]; 
    assign i44 = a[6] & b[3]; 
    assign i45 = a[5] & b[4]; 
    assign i46 = a[4] & b[5]; 
    assign i47 = a[3] & b[6]; 
    assign i48 = a[2] & b[7]; 
    assign i49 = a[7] & b[3]; 
    assign i50 = a[6] & b[4];
    assign i51 = a[5] & b[5]; 	
    assign i52 = a[4] & b[6]; 
    assign i53 = a[3] & b[7]; 
    assign i54 = a[7] & b[4]; 
    assign i55 = a[6] & b[5]; 
    assign i56 = a[5] & b[6]; 
    assign i57 = a[4] & b[7]; 
    assign i58 = a[7] & b[5]; 
    assign i59 = a[6] & b[6];
    assign i60 = a[5] & b[7];
    assign i61 = a[7] & b[6]; 	
    assign i62 = a[6] & b[7]; 
    assign i63 = a[7] & b[7]; 
	
	ha u1 (i1,i2,p[1],c1);
	fa u2 (i3,i4,i5,s1,c2);
	ha u3 (s1,c1,p[2],c3);
	procomp u4 (i6,i7,i8,i9,s2,c4);
   procomp u5 (s2,c2,c3,c4,s3,c5);
	ha u6 (s3,c5,p[3],c6);
	procomp u7 (i10,i11,i12,i13,s4,c7);
	procomp u8 (i14,c6,s4,c7,s5,c8);
	ha u9 (s5,c8,p[4],c9);
	procomp u10 (i15,i16,i17,i18,s6,c10);
	procomp u11 (i19,i20,c9,s6,s7,c11);
	fa u12 (s7,c10,c11,p[5],c12);
	procomp u13 (i21,i22,i23,i24,s8,c13);
	procomp u14 (i25,i26,i27,c12,s9,c14);
	procomp u15 (s8,c13,s9,c14,s10,c15);
	ha u16 (s10,c15,p[6],c16);
	procomp u17 (i28,i29,i30,i31,s11,c17);
	procomp u18 (i32,i33,i34,i35,s12,c18);
	procomp u19 (c16,s11,c17,s12,s13,c19);
	fa u20 (c18,s13,c19,p[7],c20);
	or1 u21 (i28,i29,i30,i31,c21);
	or1 u22 (i32,i33,i34,i35,c22);
	
	fa u23 (i36,i37,i38,s14,c23);
	compressor u24 (i39,i40,i41,i42,c20,s15,c24,c25);
	compressor u25 (c21,c22,s14,s15,c24,s16,c26,c27);
	
	compressor u26 (i45,i46,i47,i48,c23,s17,c28,c29);
	compressor u27 (c25,c27,s17,c28,i43,s18,c30,c31);
	compressor u28 (i44,s18,c30,1'b0,1'b0,s19,c32,c33);
	
	compressor u29 (i50,i51,i52,i53,c29,s20,c34,c35);
	compressor u30 (i49,c31,c33,s20,c34,s21,c36,c37);
	
	compressor u31 (i54,i55,i56,i57,c35,s22,c38,c39);
	compressor u32 (c37,s22,c38,1'b0,1'b0,s23,c40,c41);
	
	compressor u33 (i58,i59,i60,c39,1'b0,s24,c42,c43);
	fa u34 (i61,i62,c43,s25,c44);
	
	assign w = {i63,s25,s24,s23,s21,s19,s16};
	assign q = {c43,1'b0,c42,c40,c36,c32,c26};
	adder7 u35 (w,q,1'b0,p[14:8],p[15]);
endmodule

module extensionmultipler8x8_tx(
    
    );
	 
	 reg [7:0] a,b;
    wire [15:0] p;
	 
	  extensionmultipler8x8 u1 ( a,b, p);
	  
	    initial
	 begin
	 a = 8'b00001110;
	 b = 8'b00000011;
	 end
	 endmodule
