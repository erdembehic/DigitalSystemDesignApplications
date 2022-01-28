`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2022 13:36:12
// Design Name: 
// Module Name: main_tb
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


module main_tb(
    );
    reg reset,clk,x;
    reg [31:0] test=32'b0100_1110_0001_1000_0011_0011_1010_0011;
    wire y;
    main maintb(x,reset,clk,y);

    always #5 clk = ~clk;
   integer i=0;
     initial begin
       clk=0;
       reset=0;
       #50 reset = 1; #20; reset=0;
       end     
    always @(posedge clk) begin 
    x=test[31-i];
    i=i+1;
   if(i==32)$finish;
   end 

    
endmodule
