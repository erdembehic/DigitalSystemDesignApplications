`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2021 18:36:37
// Design Name: 
// Module Name: FSMTB
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
// laun
//set_property top FSM2 [current_fileset]
//set_property top FSM3 [current_fileset]
//////////////////////////////////////////////////////////////////////////////////


module FSMTB(
    );
    reg x,clk;
    wire z; 

    always #10 clk = !clk;
    reg [41:0] testsig=42'b010011000111000011110000011111000000111111;
//    FSM1 FSM1_TEST(x,clk,z);
//    FSM2 FSM2_TEST(x,clk,z);
    FSM3 FSM3_TEST(x,clk,z);
    integer i;
  
     initial begin
       x = 0;
       clk = 0;
       i=0;
       end
       
    always @(posedge clk) begin  
    x=testsig[41-i];
    i=i+1;
   if(i==42) $finish;

    end   
endmodule
