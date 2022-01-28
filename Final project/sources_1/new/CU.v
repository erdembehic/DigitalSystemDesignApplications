`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 20:09:40
// Design Name: 
// Module Name: CU
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


module CentralUnit(
input clk,reset,Start,CO,Z,
output reg WE,Busy,
output reg [1:0] InsSel,
output reg [2:0] InMuxAdd,
output reg [3:0]OutMuxAdd,RegAdd,
output reg  [7:0]CUconst
);

reg [6:0] state;
always@(posedge clk) begin
    if (reset==1) state <= 0;
    
    case (state)//initial state will be 00
   
   0    : begin
   Busy<=1'b0;
   if(Start) state<=5'd1;
   end
   
   1    : begin //resetting and setting busy
   Busy <= 1'b1;
   state<=2;
   end 
   
   2     : begin // taking A 
   InMuxAdd <= 3'd000;
   WE <= 1'b1;
   RegAdd <=4'd1; //assigned register 1 
   InsSel <=2'b11; // to obtain co
   state<=3;
   end 
      
   3,4,5,6      : begin //4th bit checking
   InsSel <=2'b11;
   InMuxAdd <=3'd3;
   WE <=1'b1;
   RegAdd <=4'd1; 
   state<=state+1;
   end 
   
   7     : begin
   OutMuxAdd<=4'd1;
   InMuxAdd <=3'd3;
   WE <= 1'b1;
   RegAdd <=4'd3;
   state<=36;
   end 
  36: state<=8;
   8     : begin 
   if (CO) begin //co is 1 even bit
   InMuxAdd <= 3'd1;
   WE <= 1'b1;
   RegAdd <=4'd1; //assigned register 2
   InsSel <= 2'b11; 
   state<=9; //3 times shift
   end  
   else begin//co is 0 odd bit////////////////////////////////////////
   OutMuxAdd<=4'd3;
   state <= 12 ; // 1 time shift
   end end
   
   9,10     : begin
   InsSel <=2'b11;
   WE <= 1'b1;
   InMuxAdd <= 3'd3;
   RegAdd <=4'd1;
   OutMuxAdd<=4'd1;
   state <=state+1;
   end
   
   11     : begin // 3 times shifted B saving
   InMuxAdd <=3'd3;
   WE <=1'b1;
   RegAdd <=4'd4; 
   OutMuxAdd<=4'd3;
   state<=12;
   end 
   
   12   : begin //a shifted one more time 
   InMuxAdd <=3'd4;
   RegAdd <=4'd1;
   InsSel <=2'b11;
   state<=13;
   end
     
   13   :begin 
   InMuxAdd<=3'd3;
   RegAdd <=4'd3; //shifted A saving 
   WE<=1'b1;
   state <=37;
   end 
   37:state<=14;  //dummy delay
   14   : begin
   if (CO) begin //3 rd bit is 1 taking B to reg A 
   InMuxAdd <=3'd1;
   WE <= 1'b1;
   RegAdd <=4'd1;
   state <= 15; //taking b to reg a to shift 2 times  
   end 
   else begin // co is zero no shifting continue to search////////////////////
   OutMuxAdd <=4'd3;
   state<=18;
   end 
   end 
   
   15,16   : begin 
   InsSel <=2'b11;
   WE <= 1'b1;
   InMuxAdd <=  3'd3;
   RegAdd <= 4'd1;
   
   state <= state+1; // to saving 2 times shifted B 
   end 
   
   17   : begin
   OutMuxAdd<=4'd1;
   InMuxAdd <=3'd4;
   WE<=1'b1;
   RegAdd <=4'd5;
   state<=18;
   end   
    
   18   : begin 
   OutMuxAdd <=4'd3;
   InMuxAdd <=3'd4;
   RegAdd <= 4'd1;
   WE <= 1'b1;
   //InsSel <=2'b11;
   state <= 19;
   end  
   
   19 : begin  // saving final a7
   InMuxAdd <= 3'd3;
   RegAdd <= 4'd3;
   WE <= 1'b1;
   state <= 20;
   end
   
   20   : begin 
   if (CO) begin 
   InMuxAdd <= 3'd1;
   WE <= 1'b1;
   RegAdd <= 4'd1;
   InsSel <=2'b11;
   state<=21;
   end 
   else begin
   OutMuxAdd <=4'd3;
   state<=22;
   end////////////////// 
   end  
    
   21   : begin 
   InMuxAdd <=3'd3;
   RegAdd <= 4'd6; // 1 time shifted B save reg 6 
   OutMuxAdd <=4'd3;
   state <= 22;
   end 
   
   22   : begin
   InMuxAdd <= 3'd4;
   RegAdd <=4'd1;
   InsSel <=2'b11;
   state <= 35;
   end 
   
//   23:  begin
//   InMuxAdd <=3'd3;
//   RegAdd <= 4'd3;
//   WE <= 1'b1;
//   state <= 24;
//   end 
  35: state<=23; //dummy delay
   23: begin
   if (CO) begin 
   InMuxAdd <=3'd1;
   WE <=1'b1;
   RegAdd <=4'd7;
   OutMuxAdd <= 4'd4;
   state <= 24;
   end 
   else  begin
   OutMuxAdd <=4'd4;
   state<=25;
   end 
   end
   //starting addition for all reg 4 5 6 7 
   24: begin 
      WE <=1'b0;
      OutMuxAdd <=4'd4;
      InMuxAdd <=3'd4;
      state<=25;
end
25:  begin
    InMuxAdd <=3'd4;
    WE <=1'b1;
    RegAdd <=4'd1; 
    //OutMuxAdd <=4'd5;
    state<=26;
    end 
    
    26:  begin
    OutMuxAdd <=4'd5;
    InMuxAdd <=3'd4;
    WE <=1'b1;
    RegAdd <=4'd2;
    InsSel <=2'b10;
    state <= 27;
    end 
    
    27: begin //save results 
    InMuxAdd <=3'd3;
    WE <=1'b1;
    RegAdd <=4'd8;
    //OutMuxAdd <= 4'd6;
    state<=28;
    end 
    
//    34: begin
//    OutMuxAdd <=4'd6;InMuxAdd <=3'd4;
//state<=26;
//end

    28: begin
    OutMuxAdd <= 4'd6;
    InMuxAdd <=3'd4;
    WE<=1'b1;
    RegAdd <=4'd1;
    state<=29;
    end
    
    29: begin
    OutMuxAdd <= 4'd7;
    InMuxAdd <=3'd4;
    WE <=1'b1;
    RegAdd <=4'd2;
    InsSel <=2'b10;
    state<=30;
    end 
    
    30 : begin
    InMuxAdd <=3'd3;
    WE <=1'b1;
    RegAdd <=4'd1;
    OutMuxAdd <= 4'd8;
    state <= 31;
    end
    
    31 : begin
    InMuxAdd <=3'd4;
    WE <=1'b1;
    RegAdd <=4'd2;
    InsSel <=2'b10;
    state<=32;
    end 
    
    32 : begin
    InMuxAdd <=3'd3;
    WE <=1'b1;
    RegAdd <=4'd0;
    Busy<=1'b0;
    end 
    
endcase
end

endmodule
