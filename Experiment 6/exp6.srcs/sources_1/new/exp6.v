`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2021 18:04:49
// Design Name: 
// Module Name: exp6
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


module FSM1(
input x,CLK,
output reg z
//output  z
    );
    wire [2:0]Q;
    wire [20:0] temp;
    reg [2:0]q;
    
    initial begin 
    q=3'b000;
    end
    
//NOT NOTq0(q[0],temp[0]);  
//NOT NOTq1(q[1],temp[1]);  
//NOT NOTq2(q[2],temp[2]);  
//NOT NOTx(x,temp[3]);  
////FOR Q0
//AND AND0(x,temp[1],temp[4]);
//AND AND1(x,temp[0],temp[5]);
//AND AND2(temp[1],temp[2],temp[6]);
//AND AND3(temp[6],temp[0],temp[7]);
//OR OR0(temp[7],temp[5],temp[8]);
//OR OR1(temp[8],temp[4],Q[0]);
////FOR Q1
//AND AND4(x,temp[6],temp[9]);
//AND AND5(q[0],q[1],temp[10]);
//AND AND6(temp[6],q[0],temp[11]);
//OR OR2(temp[11],temp[10],temp[12]);
//OR OR3(temp[12],temp[9],Q[1]);
////FOR Q2
//AND AND7(temp[10],x,temp[13]);
//AND AND8(q[2],x,temp[14]);
//OR OR4(temp[13],temp[14],temp[15]);
////FOR Z
//AND AND10(temp[14],q[0],temp[16]);
//AND AND11(q[1],temp[0],temp[17]);
//AND AND12(temp[17],temp[3],temp[18]);
//OR OR5(temp[16],temp[18]);
assign Q[0]=(~(q[2]) & ~(q[1]) & ~(q[0])) | (x & ~(q[1])) | (x & ~(q[0])); 
assign Q[1]=(~(q[2]) & ~(q[1]) & x) | (q[1] & ~q[0]) | (~(q[2]) & ~(q[1]) & (q[0]));
assign Q[2]=(x & q[2]) | (x & q[1] & q[0]);
//assign z=(x & q[2] & q[0]) | (~x & ~q[0] & q[1] );
assign temp[19]=(x & q[2] & q[0]) | (~x & ~q[0] & q[1] );
///////////////////////////////////////////////
always @(posedge CLK)begin 
q[2]=Q[2];
q[1]=Q[1];
q[0]=Q[0];
z=temp[19];
end
    
endmodule


module FSM2(
input x,CLK,
output  reg z
//output z
);

wire [2:0]Q;
reg [2:0] q;
wire a,Z;

initial begin 
q=3'b010; 
end
//For right sided FSM
assign a=x ^ q[0];
assign Q[0]=!x;
//For left sided FSM
assign Q[2] = (q[1] & a) | (a & q[2]);
assign Q[1] = a & (!q[1]) & (!q[2]);
assign Z= a & q[2];
//assign z= a & q[2];
///////////////////////////////////////////////
always @(posedge CLK)begin 
q[2]=Q[2];
q[1]=Q[1];
q[0]=Q[0];
z=Z;
end
endmodule

module FSM3(
input x,CLK,
output reg z
//output z
);
wire [2:0] Q;
reg [2:0] q;
wire Z;
initial begin 
q=3'b000; 
end
//////////////////////
assign Q[2]= (x & q[0] & q[1]) | ( !x & q[2] ) | (q[2] & (q[0] | q[1]));
assign Q[1]=(!x & q[0] & !q[1]) |(q[0] & q[2]) | (q[1] & !q[0]);
assign Q[0] =(x & !q[2] & !q[1]) | (!q[0] & !q[2] & q[1])  | (!q[0] & q[2] & !q[1]);
assign Z=(!q[0] & !q[2] & q[1]) | (q[2] & q[0]);
//assign z=(!q[0] & !q[2] & q[1]) | (q[2] & q[0]);
//////////////////////
always @(posedge CLK)begin 
q[2]=Q[2];
q[1]=Q[1];
q[0]=Q[0];
z=Z;
end
endmodule