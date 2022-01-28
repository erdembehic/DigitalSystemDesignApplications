`timescale 1ns / 1ps
module TB_TOP();

	reg clk,reset,Start;
	reg [7:0] InA,InB;
	wire [7:0] Out;
	wire Busy;

	TOP uut (clk,reset ,Start ,InA ,InB ,Busy ,Out );
	always #(10) clk = ~clk;

	initial begin
		clk = 0;
		reset = 1;
		InA = 0;
		InB = 0;
		Start = 0;
		#20;
        		reset = 0;

		Start = 1;
		InA = 8'd5; 
		InB = 8'd7; 	
		#20		
		Start = 0;
		#1000;		
	end	     
endmodule


