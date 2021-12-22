`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2021 10:20:23
// Design Name: 
// Module Name: top_tb
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


module top_tb(
    );
    reg I1,I2;
    wire or_out,not_out,nand_out,nor_out,exor_out,exnor_out,tri_out;
    
    Top_module ORtop (I1,I2,or_out,not_out,nand_out,nor_out,exor_out,exnor_out,tri_out);
//    NAND NANDtop (I1,I2,nand_out);
//    NOT NOTtop (I1,not_out);
//    NOR NORtop (I1,I2,nor_out);
//    EXOR EXORtop (I1,I2,exor_out);
//    EXNOR EXNORtop (I1,I2,exnor_out);
//    TRIcomp tritop (I1,I2,tri_out);
    
    initial begin 
     I1=1; I2=1;
     #15;

     I1=1; I2=0;
     #15;    
 
     I1=0; I2=1;
     #15;     
     
     I1=0; I2=0;
     #15; 
     $finish;     
      end
endmodule
