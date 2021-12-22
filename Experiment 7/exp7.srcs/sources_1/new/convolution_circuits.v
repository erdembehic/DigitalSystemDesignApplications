`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2021 04:01:25
// Design Name: 
// Module Name: convolution_circuits
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


module convolution_circuits(

    );
endmodule

module MULTB(
input clk,rst,srt,
input [7:0] A,B,
output reg [15:0] R,
output reg done);

always @(posedge clk) begin
if (!(rst | srt)) begin 
    R=16'b0;
    done=1'b0;
    end
 else begin 
 R=A*B;
 done=1'b1;
end end
endmodule

module MULTB_S(
input clk,rst,srt,
input [7:0] A,B,
output reg [15:0] R,
output reg done);

reg [15:0] PP[7:0];
wire [15:0] sum[7:0];
wire dummy;

parametric_RCA RCA_0(PP[0],PP[1],1'b0,dummy,sum[0]); defparam RCA_0.SIZE=16;
parametric_RCA RCA_1(PP[2],PP[3],1'b0,dummy,sum[1]); defparam RCA_1.SIZE=16;
parametric_RCA RCA_2(PP[4],PP[5],1'b0,dummy,sum[2]); defparam RCA_2.SIZE=16;
parametric_RCA RCA_3(PP[6],PP[7],1'b0,dummy,sum[3]); defparam RCA_3.SIZE=16;
parametric_RCA RCA_4(sum[0],sum[1],1'b0,dummy,sum[4]); defparam RCA_4.SIZE=16;
parametric_RCA RCA_5(sum[2],sum[3],1'b0,dummy,sum[5]); defparam RCA_5.SIZE=16;
parametric_RCA RCA_6(sum[4],sum[5],1'b0,dummy,sum[6]); defparam RCA_6.SIZE=16;

integer i;
always @(posedge clk) begin 
    if(!(rst | srt) ) begin
    for (i=0;i<8;i=i+1) begin
        PP[i] = 0;
        end 
    R=0;
    done=0; end 
    else begin
    for (i=0;i<8;i=i+1) begin
    PP[i] = {15{B[i]}}&A<<i;
    end 
    R=sum[6];
    if(R==sum[6])    
    done=1'b1;
    else 
    done=1'b0;
    end
    end
endmodule

module CWODSP(
input [7:0] f11,f12,f13,f21,f22,f23,f31,f32,f33,
input [7:0] w11,w12,w13,w21,w22,w23,w31,w32,w33,
input clk,reset,start,
output reg [23:0] result,
output reg done
);
wire [15:0] m[8:0],sum[8:0];
wire bhv_done [8:0];
wire dummy;

MULTB MULTB_m0(clk,reset,start,f11,w11,m[0],bhv_done[0]);
MULTB MULTB_m1(clk,reset,start,f12,w12,m[1],bhv_done[1]);
MULTB MULTB_m2(clk,reset,start,f13,w13,m[2],bhv_done[2]);
MULTB MULTB_m3(clk,reset,start,f21,w21,m[3],bhv_done[3]);
MULTB MULTB_m4(clk,reset,start,f22,w22,m[4],bhv_done[4]);
MULTB MULTB_m5(clk,reset,start,f23,w23,m[5],bhv_done[5]);
MULTB MULTB_m6(clk,reset,start,f31,w31,m[6],bhv_done[6]);
MULTB MULTB_m7(clk,reset,start,f32,w32,m[7],bhv_done[7]);
MULTB MULTB_m8(clk,reset,start,f33,w33,m[8],bhv_done[8]);

parametric_RCA RCA0(m[0],m[1],1'b0,dummy,sum[0]); defparam RCA0.SIZE=24;
parametric_RCA RCA1(m[2],m[3],1'b0,dummy,sum[1]); defparam RCA1.SIZE=24;
parametric_RCA RCA2(m[4],m[5],1'b0,dummy,sum[2]); defparam RCA2.SIZE=24;
parametric_RCA RCA3(m[6],m[7],1'b0,dummy,sum[3]);defparam RCA3.SIZE=24;
parametric_RCA RCA4(m[8],sum[7],1'b0,dummy,sum[4]); defparam RCA4.SIZE=24; //result 
parametric_RCA RCA5(sum[0],sum[1],1'b0,dummy,sum[5]); defparam RCA5.SIZE=24;
parametric_RCA RCA6(sum[2],sum[3],1'b0,dummy,sum[6]); defparam RCA6.SIZE=24;
parametric_RCA RCA7(sum[5],sum[6],1'b0,dummy,sum[7]); defparam RCA7.SIZE=24;

always @(posedge clk) begin 
 if(!(reset | start) ) begin
   result=0;
   done=0; end 
   else begin
    result=sum[4];
if(result==sum[4])
done=1'b1;
else 
done=1'b0;
end end endmodule
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
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