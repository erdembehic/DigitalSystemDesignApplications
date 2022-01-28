`timescale 1ns / 1ps
module RB(

    input clk,
	input reset,
	input [7:0]InA,InB, 
	input [7:0]CUconst,ALUout, 
	input [2:0]InMuxAdd, 
	input WE, 
	input [3:0]RegAdd,OutMuxAdd,  
	output [7:0]Out,ALUinA,ALUinB 

	);
	
	wire [15:0]Decod_Out;          
	wire [7:0]RegOut;              
	wire [7:0]RegIn;               
	wire [7:0]RegMuxOut [15:0];    

	//enablin selected register
	DECODER_4_16 decoder(RegAdd,WE,Decod_Out);	
	//input selector mux
	MUX8 #(.N(8)) mux_input(InA ,InB, CUconst ,ALUout ,RegOut ,RegOut ,RegOut ,RegOut ,InMuxAdd ,RegIn );										
	//1output selector mux							
	MUX16 #(.N(8)) mux_output(RegMuxOut[0],RegMuxOut[1],RegMuxOut[2],RegMuxOut[3],RegMuxOut[4],RegMuxOut[5],
	                           RegMuxOut[6],RegMuxOut[7],RegMuxOut[8],RegMuxOut[9],RegMuxOut[10],
	                           RegMuxOut[11],RegMuxOut[12],RegMuxOut[13],RegMuxOut[14],RegMuxOut[15],
	                           OutMuxAdd ,RegOut );
	                           
genvar i;
generate 
    for (i=0;i<16;i=i+1) begin    
REGISTER REG0(clk,reset,Decod_Out[i],RegIn,RegMuxOut[i]);
end 
endgenerate										


	assign Out = RegMuxOut[0]; // R0 is reserved for external output
	assign ALUinA = RegMuxOut[1]; // R1 is reserved for ALU input A
	assign ALUinB = RegMuxOut[2]; // R2 is reserved for ALU input B 

endmodule

