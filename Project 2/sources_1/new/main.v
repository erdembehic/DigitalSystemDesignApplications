`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2022 23:26:08
// Design Name: 
// Module Name: main
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


module main(
input x,reset,clk,
output reg y
    );
reg [2:0] state;

    always @(posedge clk, posedge reset) begin
   if(reset)  
   state <=3'b000;
   else begin
   case(state)
   3'b000    : begin //A
        if(x) begin
            state<=3'b000; //A-->A
            y<=0;
            end
        else begin
            state<=3'b001;//A-->B
            y<=0;
            end
   end//case 000
   3'b001    : begin //B
        if(x) begin
            state<=3'b000; //B-->A
            y<=0;
            end
        else begin
            state<=3'b010; //B-->C
            y<=0;
            end
   end//case 001
   3'b010    : begin //C
           if(x) begin
               state<=3'b100; //C-->E
               y<=0;
               end
           else begin
               state<=3'b011; //C-->D
               y<=0;
               end
      end//case 010
   3'b011    : begin //D
           if(x) begin
               state<=3'b100; //D-->A
               y<=1;
               end
           else begin
               state<=3'b011; //D-->D
               y<=0;
               end
      end//case 011
   3'b100    : begin //E
             if(x) begin
                 state<=3'b00; //E-->A
                 y<=1;
                 end
             else begin
                 state<=3'b001; //E-->B
                 y<=0;
                 end
        end//case 100    
   default   : begin 
        state<=3'b000;
        y<=0;
        end    
        
   endcase
   end//else 
   end//always 
endmodule
