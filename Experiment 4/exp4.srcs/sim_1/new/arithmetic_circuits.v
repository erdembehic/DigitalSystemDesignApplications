`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2021 11:58:12
// Design Name: 
// Module Name: arithmetic_circuits_tb
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


module arithmetic_circuits_tb(

    );
    
endmodule

module HA_tb();

reg x;
reg y;
wire cout,sum;
HA HAtb(x,y,cout,sum);

initial begin
           x=1'b0; 
           y=1'b0; #20;
           x=1'b1; 
           y=1'b0; #20;    
           x=1'b0; 
           y=1'b1; #20;     
           x=1'b1; 
           y=1'b1; #20;
           $finish;
           end    
endmodule

module FA_tb();
reg x,y,cin;
wire cout,sum;
FA FAtb(x,y,cin,cout,sum);
initial begin
           x=1'b1; y=1'b0; cin=1'b0;#20; 
           x=1'b0; y=1'b0; cin=1'b0;#20;
           x=1'b1; y=1'b1; cin=1'b0;#20;
           x=1'b0; y=1'b1; cin=1'b0;#20;  
           x=1'b1; y=1'b0; cin=1'b1;#20; 
           x=1'b0; y=1'b0; cin=1'b1;#20; 
           x=1'b1; y=1'b1; cin=1'b1;#20;    
           x=1'b0; y=1'b1; cin=1'b1;#20;
           
           $finish;
           end 
endmodule

module RCA_tb();
reg [3:0] x,y;
reg cin;
wire cout;
wire [3:0] sum;
integer i;
    RCA RCA_tb(x,y,cin,sum,cout);
    initial begin
    for(i=0;i<512;i=i+1)
            begin
                {x,y,cin} = i;
                #20;
            end
              $finish;
            end
          
endmodule

module parametricRCA_tb();
reg[7:0] x,y;
reg cin;
wire cout;
wire[7:0] sum;

parametric_RCA paramRCA_tb(x,y,cin,cout,sum);
initial begin
        x=8'd45; y=8'd78; cin=1'b1;#20;
        x=8'd14; y=8'd53; cin=1'b0;#20;
        x=8'd10; y=8'd245; cin=1'b1;#20;
        x=8'd112; y=8'd35; cin=1'b0;#20;
        x=8'd115; y=8'd110; cin=1'b1;#20;
        x=8'd255; y=8'd255; cin=1'b0;#20;
        $finish; end
endmodule

module CLA_tb();
reg [3:0] x,y;
reg cin;
wire cout;
wire [3:0] sum;

CLA CLA_tb(x,y,cin,sum,cout);
initial begin 
    x=4'd10; y=4'd4; cin=1'b1; #20;
    x=4'd7; y=4'd14; cin=1'b0; #20;
    x=4'd6; y=4'd5; cin=1'b1; #20;
    x=4'd2; y=4'd8; cin=1'b0; #20;
    x=4'd11; y=4'd4; cin=1'b1; #20;
    x=4'd3; y=4'd9; cin=1'b0; #20;
    x=4'd15; y=4'd15; cin=1'b1; #20;
    $finish; end 
    endmodule
    
module SRCA_tb();
reg [3:0] x,y;
reg cin;
wire cout;
wire [3:0] sum;

SRCA SRCA_tb(x,y,cin,cout,sum);
initial begin 
    x=4'd10; y=4'd4; cin=1'b0; #20;
    x=4'd7; y=4'd14;    #20;
    x=4'd6; y=4'd5;     #20;
    x=4'd2; y=4'd8;     #20;
    x=4'd11; y=4'd11;   #20;
    x=4'd3; y=4'd9;     #20;
    x=4'd15; y=4'd15;   #20;
    $finish; end 
    endmodule
    