`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2021 09:02:55
// Design Name: 
// Module Name: TopModule
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


module TopModule(
input [7:0] sw,
input [3:0] btn,
output  [7:0] led,
output  [6:0] seg,
output  dp,
output  [3:0] an
    );
    assign an = 4'b1110;
    wire [15:0] tempout;
    assign dp = tempout[15];
    assign seg = tempout[14:8];
    assign led = tempout[7:0];
    
    DECODER decoder1(sw[3:0],tempout);
//    ENCODER encoder1(sw[3:0],led[1:0],led[7]);
//    MUX mux1(sw[3:0],btn[1:0],led[0]);
        //DEMUX demux1(sw[0],btn[1:0],led[3:0]);
    
    
endmodule
