`timescale 1ns / 1ps
module ALU(
	input [7:0] ALUinA,ALUinB,
	input [1:0] InsSel,
	output [7:0] ALUout,
	output CO,Z
    );
    
wire [7:0] ANDout, XORout, ADDout, SHIFTout;
wire carry_out;
	
	AND_8 AND(ALUinA,ALUinB,ANDout);	
	
	XOR_8 XOR(ALUinA,ALUinB,XORout);   
	
	ADD_8 ADDER(ALUinA,ALUinB,1'b0,carry_out, ADDout);	
	
	SHIFT_CIRC_LEFT_8 shif8(ALUinA,SHIFTout);	
	
	COMP_ZERO_8 comp8(ALUout,Z); 
	
	MUX4 #(8) multp_out(ANDout,XORout,ADDout,SHIFTout,InsSel,ALUout);	
	
	MUX4 #(1) mulpt_co(1'b0,1'b0,carry_out,SHIFTout[0],InsSel,CO);	

endmodule
