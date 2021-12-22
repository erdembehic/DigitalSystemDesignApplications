`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2021 07:22:26
// Design Name: 
// Module Name: exp5tmeptb
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


module exp5tmeptb(

    );
endmodule

module memory_tb() ;

wire out ;
reg in;

SimMemory1 SMEM(in, out) ;

initial begin
in=1'b0;#20
in=1'b1;#20
$finish;
end
endmodule

module SR_LNor_Nand() ;
reg s, r;
wire q, qn;

SR_LATCH_NAND SRNAND(s,r,q,qn);
//SR_LATCH_NOR SRNOR(s,r,q,qn);
initial begin
s=1'b1; r=1'b0; #20;
s=1'b1; r=1'b1;#20;
s=1'b0; r=1'b1;#20;
s=1'b1; r=1'b1;#20;
s=1'b0; r=1'b0;#20;
$finish;
end endmodule

module DFF_TB() ;
reg clk, d;
wire q, qn;

MS_DFF msdff(d,clk, q, qn) ;

initial clk <= 1 ; always #5 clk <= ~clk;

initial begin
d=1'b0; #20;
d=1'b1; #13;
d=1'b0; #7;
end 
endmodule   

module REG8_TB() ;
reg [7:0] in;
reg clk, clr;
wire [7:0] out;

REG_8 reg8(in,clk,clr,out) ;

initial clk <= 1 ; always #5 clk <= ~clk;

initial begin
clr=1'b0;#7
in=8'd10;#13
in=8'd20;#13;
clr=1'b1;#15
clr=1'b0;#7
in=8'd30;#13
in=8'd40;#13; 
$finish;
end endmodule 

module stimulus();
wire [7:0] DOUT;
reg [7:0] DINA = 0;
reg [3:0] ADDRA = 0;
reg CLKA; reg WEA = 0; // write enable
integer count = 0;
// instance
ram BLK( .clka(CLKA), .wea(WEA), .addra(ADDRA), .douta(DOUT) );
// clock
initial
begin
CLKA = 0;
forever #5 CLKA = ~CLKA;
end
initial
$monitor( $time ," ADDRA=%b | DOUT=%b", ADDRA, DOUT);
initial
begin
while( count<16 )
begin
//DINA = count;
ADDRA = count;
#20 count = count + 1;
end
#20 $finish;
end
endmodule


module fifo_Tb();
reg clk,srst,wr_en,rd_en;
reg [7:0] din;
wire full,almost_full,overflow,empty,underflow;
wire [3:0] data_count;
wire [7:0] dout;
fifo fifotest(.clk(clk),                  // input wire clk
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
  initial clk <= 1 ; always #5 clk <= ~clk;
  integer i,j;
  initial begin
  din=0;
  wr_en=0;
  rd_en=0;
  srst=0;
  #10;
  srst=1;#20;
  srst=0;
  i=0;
  while (!(full==1 && overflow==1))begin 
  wr_en=1;
  din=i;
  i=i+1;
  #10;
  end 
  wr_en=0;
  #10;
  for (j=0;j<16;j=j+1) begin 
  rd_en=1;
  #5;
  end 
  end
endmodule