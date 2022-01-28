`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2022 00:21:24
// Design Name: 
// Module Name: LIB
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


module LIB(

    );
endmodule

module REGISTER(
	input clk,
	input reset,
	input En,
	input [7:0] Rin,
	output reg [7:0] Rout
    );

    reg [7:0]reg_next;
    reg [7:0]reg_out;
    
   //asynchronous reset
    always @(posedge clk, posedge reset) begin
        if(reset==1)
            reg_out <= 0;
        else
            reg_out <= reg_next;
    end
    
    //enable activates register
    always @(*) begin
        if(En)
            reg_next = Rin;
        else
            reg_next = reg_out;
    end
    
    (* dont_touch *) //if both enable and reset signals are low, output is unchanged
    always @(*) begin
        Rout = reg_out;
    end
    
endmodule

module MUX8 #(parameter N=8)(
    //input: 8 N-bit
    //output 1 N-bit
	input [N-1:0]I0,
	input [N-1:0]I1,
	input [N-1:0]I2,
	input [N-1:0]I3,
	input [N-1:0]I4,
	input [N-1:0]I5,
	input [N-1:0]I6,
	input [N-1:0]I7,
	input [2:0]S,
	output reg [N-1:0]O
    );

(* dont_touch *)
always @* begin
	case(S)
		3'b000: O = I0;
		3'b001: O = I1;
		3'b010: O = I2;
		3'b011: O = I3;
		3'b100: O = I4;
		3'b101: O = I5;
		3'b110: O = I6;
		3'b111: O = I7;
	endcase
end

endmodule

module MUX16 #(parameter N=8)(
    //input: 16 N-bit
    //output 1 N-bit
	input [N-1:0]I0,
	input [N-1:0]I1,
	input [N-1:0]I2,
	input [N-1:0]I3,
	input [N-1:0]I4,
	input [N-1:0]I5,
	input [N-1:0]I6,
	input [N-1:0]I7,
	input [N-1:0]I8,
	input [N-1:0]I9,
	input [N-1:0]I10,
	input [N-1:0]I11,
	input [N-1:0]I12,
	input [N-1:0]I13,
	input [N-1:0]I14,
	input [N-1:0]I15,
	input [3:0]S,
	output reg [N-1:0]O
    );

(* dont_touch *)
always @* begin
	case(S)
		4'b0000: O = I0;
		4'b0001: O = I1;
		4'b0010: O = I2;
		4'b0011: O = I3;
		4'b0100: O = I4;
		4'b0101: O = I5;
		4'b0110: O = I6;
		4'b0111: O = I7;
		4'b1000: O = I8;
		4'b1001: O = I9;
		4'b1010: O = I10;
		4'b1011: O = I11;
		4'b1100: O = I12;
		4'b1101: O = I13;
		4'b1110: O = I14;
		4'b1111: O = I15;
	endcase
end

endmodule

module DECODER_4_16(
	input [3:0]RegAdd,
	input WE,
	output reg [15:0]Out
    );

(* dont_touch *) 
always @(*) begin
	if(WE == 0)
		Out = 0; 
	else begin
		case(RegAdd)
			4'b0000: Out = 16'd1;
			4'b0001: Out = 16'd2;
			4'b0010: Out = 16'd4;
			4'b0011: Out = 16'd8;
			4'b0100: Out = 16'd16;
			4'b0101: Out = 16'd32;
			4'b0110: Out = 16'd64;
			4'b0111: Out = 16'd128;
			4'b1000: Out = 16'd256;
			4'b1001: Out = 16'd512;
			4'b1010: Out = 16'd1024;
			4'b1011: Out = 16'd2048;
			4'b1100: Out = 16'd4096;
			4'b1101: Out = 16'd8192;
			4'b1110: Out = 16'd16384;
			4'b1111: Out = 16'd32768;
		endcase
	end
end

endmodule
module MUX4 #(parameter N=8)(
    //input: 4 N-bit
    //output 1 N-bit
	input [N-1:0]I0,
	input [N-1:0]I1,
	input [N-1:0]I2,
	input [N-1:0]I3,
	input [1:0]S,
	output reg [N-1:0]O
    );

(* dont_touch *)
always @* begin
	case(S)
		2'b00: O = I0;
		2'b01: O = I1;
		2'b10: O = I2;
		2'b11: O = I3;
	endcase
end

endmodule

module AND_8(
	input [7:0] a,
	input [7:0] b,
	output [7:0] r);

(* dont_touch *) assign r = a & b;
endmodule

module XOR_8(
 	input [7:0] a,
	input [7:0] b,
	output [7:0] r
    );

(* dont_touch *) assign r = a ^ b;

endmodule

//module ADD_8
//(   input [7:0] a, b, 
//    output co, 
//    output [7:0] r);
    
//   assign {co,r}= a+ b;
//endmodule

module COMP_ZERO_8(
	input [7:0] a,
	output reg Z
    );

    (* dont_touch *)
    always @* begin
        if(a==0)
            Z=1;
        else
            Z=0;
    end
endmodule

module SHIFT_CIRC_LEFT_8(
	input [7:0] a,
	output [7:0] r
    );

(* dont_touch *) assign r = {a[6:0],a[7]};

endmodule

module ADD_8 (x,y,c_in,c_out,sum);//generate for rca
parameter SIZE=8;
input [SIZE-1:0] x, y;
input c_in;
output c_out;
output [SIZE-1:0] sum;


(*DONT_TOUCH = "TRUE"*) wire [SIZE:0] temp;
assign temp[0]=c_in;
assign c_out=temp[SIZE];

genvar i;
generate for (i=0;i<SIZE;i=i+1) begin

(*DONT_TOUCH = "TRUE"*) FA FAn(x[i],y[i],temp[i],temp[i+1],sum[i]);
end 
endgenerate 
endmodule

module FA(//full adder
input x,y,c_in,
output c_out,sum);

(*DONT_TOUCH = "TRUE"*) wire sum0,c_out0,c_out1;
HA HA0(x,y,c_out0,sum0);

HA HA1(sum0,c_in,c_out1,sum);
OR OR0(c_out1,c_out0,c_out);

endmodule


module AND(
input I1,I2,
output O);

assign O = I1 & I2;
endmodule


module OR( 
input I1, I2,
output O);

assign O = I1 | I2;
endmodule


module HA( //halfadder 
input x,y,
output c_out,sum);

EXOR EXOR0(x,y,sum);
AND AND0(x,y,c_out);
endmodule

module EXOR(
input I1,I2,
output O);
LUT2# (.INIT(4'b0110))lut(.O(O),.I0(I1),.I1(I2)); 

endmodule