`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2021 15:47:47
// Design Name: 0
//40170213
// Module Name: exp5
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


module exp5(

    );
endmodule

module SimMemory(
inout SW,
output LED);

//(*DONT_TOUCH*=*TRUE*)
(*DONT_TOUCH = "TRUE"*) wire [2:0] temp;
assign SW=temp[0];
NOT NOT0(temp[0],temp[1]);
NOT NOT1(temp[1],temp[2]);
assign temp[0]=temp[2];
assign LED=temp[0];

endmodule
module SimMemory1(
input SW,
output LED);

//(*DONT_TOUCH*=*TRUE*)
(*DONT_TOUCH = "TRUE"*) wire [1:0] temp;
assign temp[0] =SW;
NOT NOT0(temp[0],temp[1]);
NOT NOT1(temp[1],temp[0]);
assign LED=temp[1];

endmodule
module SR_LATCH_NOR(
input S,R,
output Q,Qn);

NOR NOR_S(Q,S,Qn);
NOR NOR_R(Qn,R,Q);

endmodule

module SR_LATCH_NAND(
input S,R,
output Q,Qn);

NAND NAND_S(Qn,S,Q);
NAND NAND_R(Q,R,Qn);

endmodule

module DFF(
input CLK,D,
output Q,Qn);

wire s,r,dn;
NOT NOT0(D,dn);
NAND NAND0(D,CLK,s);
NAND NAND1(dn,CLK,r);

NAND NANDS(Qn,s,Q);
NAND NANDR(Q,r,Qn);
endmodule

module MS_DFF(
input D,CLK,
output Q,Qn);

wire [1:0] temp;
wire clk_n;
NOT CLKn(CLK,clk_n);

DFF Master(CLK,D,temp[0],temp[1]);
DFF Slave(clk_n,temp[0],Q,Qn);
endmodule

module DFF_BHV(
input D,CLK,
output reg Q,Qn);

NOT NOTq(Q,Qn);
always @(posedge CLK) begin 
    assign Q=D;
    
    end 
    endmodule

module REG_8(
input [7:0] IN,
input CLK,CLEAR,
output reg [7:0] OUT);


always @(posedge CLK or posedge CLEAR) begin
    if (CLEAR==1'b1) 
    OUT = 8'b0000_0000;
    else OUT=IN;
end
endmodule 

module ram(
input clka,wea,
input [3:0] addra,
output [7:0] douta);

//wire dina;
blk_mem_gen_0 bram(.clka(clka),.wea(wea),.addra(addra),.douta(douta));
endmodule

module fifo(
input clk,srst,wr_en,rd_en,
input [7:0] din,
output full,almost_full,overflow,empty,underflow,
output [3:0] data_count,
output [7:0] dout);

fifo_generator_0 fifo (
  .clk(clk),                  // input wire clk
  .srst(srst),                // input wire srst
  .din(din),                  // input wire [7 : 0] din
  .wr_en(wr_en),              // input wire wr_en
  .rd_en(rd_en),              // input wire rd_en
  .dout(dout),                // output wire [7 : 0] dout
  .full(full),                // output wire full
  .almost_full(almost_full),  // output wire almost_full
  .overflow(overflow),        // output wire overflow
  .empty(empty),              // output wire empty
  .underflow(underflow),    // output wire underflow
  .data_count(data_count));   
  
endmodule