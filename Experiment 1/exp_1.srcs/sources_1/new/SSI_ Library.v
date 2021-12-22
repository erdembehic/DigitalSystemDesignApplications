`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2021 23:48:01
// Design Name: 
// Module Name: SSI_ Library
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


module SSI_Library(

    );
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

module NOT(
input I,
output O);

assign O = ~I;

endmodule

module NAND(
input I1,I2,
output reg O);

initial 
O = 0;
always @(I1,I2) begin 
  O = ~(I1 & I2);
 end 
endmodule

module NOR(
input I1,I2,
output reg  O);

initial  begin
O=0; end
always@(I1,I2) begin
O = ~(I1 | I2);
end 

endmodule

module EXOR(
input I1,I2,
output O);
LUT2# (.INIT(4'b0110))lut(.O(O),.I0(I1),.I1(I2)); 

endmodule

module EXNOR(
input I1,I2,
output O);

LUT2# (.INIT(4'b1001))lut(.O(O),.I0(I1),.I1(I2));
endmodule

module TRIcomp(
input I,E,
output O);

assign O = E ? I :1'bZ;
endmodule  

//module main(
//input I1,I2,
//initial CLK100MHZ <= 1 ; always #5 CLK100MHZ <= ~CLK100MHZ;
//output or_out,not_out,nand_out,nor_out,exor_out,exnor_out,tri_out);
//AND ANDtop(I1,I2,or_out);
//OR ORtop (I1,I2,or_out);
//NAND NANDtop (I1,I2,nand_out);
//NOT NOTtop (I1,not_out);
//NOR NORtop (I1,I2,nor_out);
//EXOR EXORtop (I1,I2,exor_out);
//EXNOR EXNORtop (I1,I2,exnor_out);
//TRIcomp tritop (I1,I2,tri_out);

//endmodule
