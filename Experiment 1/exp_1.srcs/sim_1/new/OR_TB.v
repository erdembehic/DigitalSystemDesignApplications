`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2021 00:15:23
// Design Name: 
// Module Name: OR_TB
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


module TRIcomp_TB();
    reg i1;
    reg i2;
    
    wire a,b,c,d,e,f,g;
    
    Top_Module tri_tb(i1,i2,a,b,c,d,e,f,g);
    
    initial begin 
     i1=1; i2=1;
     #15;

     i1=1; i2=0;
     #15;    
 
     i1=0; i2=1;
     #15;     
     
     i1=0; i2=0;
     #15; 
     $finish;    
   
      end
endmodule
