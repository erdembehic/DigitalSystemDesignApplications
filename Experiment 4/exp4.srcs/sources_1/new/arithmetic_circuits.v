`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2021 23:39:35
// Design Name: 
// Module Name: arithmetic_circuits
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


module arithmetic_circuits(

    );
endmodule

module HA( //halfadder 
input x,y,
output c_out,sum);

EXOR EXOR0(x,y,sum);
AND AND0(x,y,c_out);
endmodule

module FA(//full adder
input x,y,c_in,
output c_out,sum);

(*DONT_TOUCH = "TRUE"*) wire sum0,c_out0,c_out1;
HA HA0(x,y,c_out0,sum0);

HA HA1(sum0,c_in,c_out1,sum);
OR OR0(c_out1,c_out0,c_out);

endmodule


module RCA(//ripple carry adder
input [3:0]x,y,
input c_in,
output [3:0] sum,
output c_out);

(*DONT_TOUCH = "TRUE"*) wire [2:0] fa_out;
FA FA0(x[0],y[0],c_in,fa_out[0],sum[0]);
FA FA1(x[1],y[1],fa_out[0],fa_out[1],sum[1]);
FA FA2(x[2],y[2],fa_out[1],fa_out[2],sum[2]);
FA FA3(x[3],y[3],fa_out[2],c_out,sum[3]);

endmodule

module parametric_RCA(x,y,c_in,c_out,sum);//generate for rca
parameter SIZE=8;
input [SIZE-1:0] x, y;
input c_in;
output c_out;
output [SIZE-1:0] sum;


(*DONT_TOUCH = "TRUE"*) wire [SIZE:0] temp;
assign temp[0]=c_in;
assign c_out=temp[SIZE];

genvar i;
generate for (i=0;i<SIZE;i=i+1) begin

(*DONT_TOUCH = "TRUE"*) FA FAn(x[i],y[i],temp[i],temp[i+1],sum[i]);
end 
endgenerate 
endmodule

module CLA(
input [3:0] x,y,
input c_in,
output [3:0] sum,
output c_out);
(*DONT_TOUCH = "TRUE"*)wire [3:0] p,g,c,cout;

(*DONT_TOUCH = "TRUE"*)EXOR EXORp0(x[0],y[0],p[0]);
(*DONT_TOUCH = "TRUE"*)EXOR EXORp1(x[1],y[1],p[1]);
(*DONT_TOUCH = "TRUE"*)EXOR EXORp2(x[2],y[2],p[2]);
(*DONT_TOUCH = "TRUE"*)EXOR EXORp3(x[3],y[3],p[3]);

(*DONT_TOUCH = "TRUE"*)AND ANDg0(x[0],y[0],g[0]);
(*DONT_TOUCH = "TRUE"*)AND ANDg1(x[1],y[1],g[1]);
(*DONT_TOUCH = "TRUE"*)AND ANDg2(x[2],y[2],g[2]);
(*DONT_TOUCH = "TRUE"*)AND ANDg3(x[3],y[3],g[3]);

(*DONT_TOUCH = "TRUE"*)AND ANDCo1(p[0],c_in,c[0]);
(*DONT_TOUCH = "TRUE"*)OR ORCo1(c[0],g[0],cout[0]);

(*DONT_TOUCH = "TRUE"*)AND ANDCo2(p[1],cout[0],c[1]);
(*DONT_TOUCH = "TRUE"*)OR ORCo2(c[1],g[1],cout[1]);

(*DONT_TOUCH = "TRUE"*)AND ANDCo3(p[2],cout[1],c[2]);
(*DONT_TOUCH = "TRUE"*)OR ORCo3(c[2],g[2],cout[2]);

(*DONT_TOUCH = "TRUE"*)AND ANDCo4(p[3],cout[2],c[3]);
(*DONT_TOUCH = "TRUE"*)OR ORCo4(c[3],g[3],cout[3]);

(*DONT_TOUCH = "TRUE"*)EXOR EXORsum0(p[0],c_in,sum[0]);
(*DONT_TOUCH = "TRUE"*)EXOR EXORsum1(p[1],cout[0],sum[1]);
(*DONT_TOUCH = "TRUE"*)EXOR EXORsum2(p[2],cout[1],sum[2]);
(*DONT_TOUCH = "TRUE"*)EXOR EXORsum3(p[3],cout[2],sum[3]);
assign c_out=cout[3];

endmodule

module SRCA(
input [3:0]x,y,
input c_in,
output c_out,
output [3:0] sum);

(*DONT_TOUCH = "TRUE"*) wire [3:0] fa_out,temp;
(*DONT_TOUCH = "TRUE"*) wire [4:0] conc;
//wire a;
FA FA0(x[0],y[0],c_in,fa_out[0],sum[0]);
FA FA1(x[1],y[1],fa_out[0],fa_out[1],sum[1]);
FA FA2(x[2],y[2],fa_out[1],fa_out[2],sum[2]);
FA FA3(x[3],y[3],fa_out[2],fa_out[3],sum[3]);

EXOR EXOR0(fa_out[3],fa_out[2],temp[0]);  //overflow detect
AND AND0(temp[0],fa_out[3],temp[1]);
NOT NOT0(temp[0],temp[2]);
AND AND1(temp[2],sum[3],temp[3]);
OR OR0(temp[3],temp[1],c_out);
//EXOR EXOR4(fa_out[1],fa_out[2],a);  
assign conc={c_out,sum};

endmodule