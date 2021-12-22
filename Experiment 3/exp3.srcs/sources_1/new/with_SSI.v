`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2021 06:53:17
// Design Name: 
// Module Name: with_SSI
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


module with_SSI(
input a,b,c,d, 
output f3,f2,f1,f0
    );
    wire [15:0] temp;
    //f0= b and d f1=
    AND and0(b,d,f0);
    
    NOT not0(a,temp[0]);
    NOT not1(b,temp[1]); 
    NOT not2(c,temp[2]); 
    NOT not3(d,temp[3]);  
    AND and1(c,b,temp[4]);
    AND and1_1(temp[4],temp[0],temp[5]);
    AND and2 (temp[4],temp[3],temp[6]);
    AND and3 (a,d,temp[7]);
    AND and3_1(temp[7],temp[1],temp[8]);
    AND and4_1(temp[7],temp[2],temp[10]);
    OR or0(temp[5],temp[6],temp[11]);
    OR or0_1(temp[8],temp[10],temp[12]);
    OR or0_2(temp[12],temp[11],f1);
    
    AND and5(a,c,temp[9]);
    AND and5_1(temp[9],temp[1],temp[13]);
    AND and6 (temp[9],temp[3],temp[14]);
    OR or1(temp[14],temp[13],f2);
    
    AND and7(temp[4],temp[7],f3);
    
endmodule

module with_decoder(
input a,b,c,d,
output f0,f1,f2,f3);

wire [15:0] O;
wire [3:0] in;
wire [10:0] temp;
assign in[0]=a; assign in[1]=b; assign in[2]=c; assign in[3]=d;
DECODER decoder1(in,O);
//F1=?(6,7,9,11,13,14)
//F2=?(10,11,14)
//F0=?(15)

OR or0(O[5],O[7],temp[0]);
OR or0_1(O[15],O[13],temp[1]);
OR or0_2(temp[0],temp[1],f0);

OR or1(O[6],O[7],temp[2]);
OR or1_1(O[9],O[11],temp[3]);
OR or1_2(O[13],O[14],temp[4]);
OR or1_3(temp[2],temp[3],temp[5]);
OR or1_4(temp[5],temp[4],f1);

OR or2(O[10],O[11],temp[6]);
OR or2_1(O[14],temp[6],f2);

OR or3(O[15],1'b0,f3);

endmodule

module with_MUX(
input a,b,c,d,
output f0,f1,f2,f3);

wire [10:0] temp;
AND and0(b,d,temp[0]);
MUX mux0({temp[0],temp[0],temp[0],temp[0]},{a,c},f0);

NOT notd(d,temp[1]);
NOT notb(b,temp[3]);
AND and2(d,temp[3],temp[4]);
AND and1(b,temp[1],temp[2]);
OR or0(temp[2],temp[4],temp[5]);

MUX mux1({temp[5],d,b,1'b0},{a,c},f1);

OR or1(temp[1],temp[3],temp[6]);
MUX mux2({temp[6],1'b0,1'b0,1'b0},{c,a},f2);

AND and4(b,d,temp[7]);
MUX mux3({temp[7],1'b0,1'b0,1'b0},{a,c},f3);
endmodule