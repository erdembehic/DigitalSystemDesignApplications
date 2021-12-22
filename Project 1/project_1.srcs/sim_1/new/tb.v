`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2021 12:34:15
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg I1,I2;
        wire or_out,not_out,nand_out,nor_out,exor_out,exnor_out,tri_out;
    
    Top_Module nandd(I1,I2,or_out,not_out,nand_out,nor_out,exor_out,exnor_out,tri_out);
    
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
