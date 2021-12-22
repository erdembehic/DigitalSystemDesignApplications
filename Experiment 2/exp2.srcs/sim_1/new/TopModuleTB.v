`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2021 09:15:23
// Design Name: 
// Module Name: TopModuleTB
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


module TopModuleTB(
    ); 
    reg [7:0] sw;
    reg [3:0] btn;
    wire [7:0] led;
    wire [6:0] seg;
    wire dp;
    wire [3:0] an;
    
    TopModule test(sw,btn,led,seg,dp,an);
    
    initial begin
    sw=8'd5;
    btn=2'd0;#15;
    btn=2'd1;#15; 
    btn=2'd2;#15;
    btn=2'd3;#15;
     
    $finish;
    end  
endmodule

//    sw=8'd4; #15;
//    sw=8'd5; #15;
//    sw=8'd6; #15;
//    sw=8'd7; #15;
    
//    sw=8'd8; #15;
//    sw=8'd9; #15;
//    sw=8'd10; #15;
//    sw=8'd11; #15;
    
//    sw=8'd12; #15;
//    sw=8'd13; #15;
//    sw=8'd14; #15;
//    sw=8'd15; #15;