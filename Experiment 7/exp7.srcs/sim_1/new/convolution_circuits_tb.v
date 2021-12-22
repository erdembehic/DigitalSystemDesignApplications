`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2021 04:22:01
// Design Name: 
// Module Name: convolution_circuits_tb
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


module convolution_circuits_tb( );
endmodule

module MULTB_tb();
reg clk,rst,srt;
reg [7:0] A,B;
wire [15:0] R;
wire done;
initial clk <= 1 ; always #5 clk <= ~clk;
//MULTB MULTB_test(clk,rst,srt,A,B,R,done);
MULTB_S MULTBS_test(clk,rst,srt,A,B,R,done);


initial begin
rst=1; srt=0;
A=8'd3; B=8'd4; #20;
if(R==16'd12)
    $display("A= %d , B= %d , A*B=%d result:TRUE",A,B,R);
    else 
    $display("A= %d , B= %d , A*B=%d result:FALSE",A,B,R);
A=8'd15; B=8'd25; #20;
if(R==16'd375)
    $display("A= %d , B= %d , A*B=%d result:TRUE",A,B,R);
else 
    $display("A= %d , B= %d , A*B=%d result:FALSE",A,B,R);
A=8'd15; B=8'd0; #20;
if(R==16'd0)
    $display("A= %d , B= %d , A*B=%d result:TRUE",A,B,R);
else 
    $display("A= %d , B= %d , A*B=%d result:FALSE",A,B,R);
rst=0; srt=0;#40
rst=1; srt=0;
A=8'd100; B=8'd111; #20;
if(R==16'd11100)
    $display("A= %d , B= %d , A*B=%d result:TRUE",A,B,R);
else 
    $display("A= %d , B= %d , A*B=%d result:FALSE",A,B,R);
A=8'd174; B=8'd255; #20;
if(R==16'd44370)
    $display("A= %d , B= %d , A*B=%d result:TRUE",A,B,R);
else 
    $display("A= %d , B= %d , A*B=%d result:FALSE",A,B,R);
$finish;
end
endmodule

module CWODSP_TB();
reg [7:0] f11,f12,f13,f21,f22,f23,f31,f32,f33;
reg [7:0] w11,w12,w13,w21,w22,w23,w31,w32,w33;
reg clk,reset,start;
wire [23:0] result;
wire done;
CWODSP CWODSP_test(f11,f12,f13,f21,f22,f23,f31,f32,f33,w11,w12,w13,w21,w22,w23,w31,w32,w33,clk,reset,start,result,done);
initial clk <= 0 ; always #5 clk <= ~clk;
initial begin
reset=1; start=0;
f11=8'd64; f12=8'd128; f13=8'd255;
f21=8'd255; f22=8'd128; f23=8'd64;
f31=8'd64; f32=8'd128; f33=8'd255;

w11=8'd1; w12=8'd2; w13=8'd1;
w21=8'd2; w22=8'd4; w23=8'd2;
w31=8'd1; w32=8'd2; w33=8'd1;#60;
if(result==24'd2300)
$display("convolution f and w =%d result:TRUE",result);
else
$display("convolution f and w =%d result:FALSE",result);
reset=0; start=0; #30;
reset=1; start=0;
f11=8'd13; f12=8'd84; f13=8'd117;
f21=8'd144; f22=8'd150; f23=8'd121;
f31=8'd4; f32=8'd38; f33=8'd51;
#60;
if(result==24'd1559)
$display("convolution f and w =%d result:TRUE",result);
else
$display("convolution f and w =%d result:FALSE",result);
#60
reset=0; start=0; #10;
$finish;
end
endmodule