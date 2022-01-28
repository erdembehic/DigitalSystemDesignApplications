`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2022 20:02:39
// Design Name: 
// Module Name: top
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


module top(
input clk,start,
input [14:0] address,
output done,

output [19:0] result
    );
    
    //wire [14:0] address;
    wire shift_right,start_conv,done_conv;
    wire [3:0] current_state, next_state;
    wire [7:0] douta;
    wire [71:0] data_out;
    wire [71:0] kernel={{8'd1},{8'd2},{8'd1},{8'd2},{8'd4},{8'd2},{8'd1},{8'd2},{8'd1}};
  //initializing other modules
  control_FSM FSM(clk,start,done_conv,current_state,next_state,
                    shift_right,start_conv,address,done);
                    
  conv_input_reg CIR(clk,shift_right,douta,data_out);
  
  blk_mem_gen_0 BRAM(.addra(address),.clka(clk),.dina(1'b0),.douta(douta),.wea(0));      
              
  CWODSP CWODSP_modified(data_out,kernel,clk,1'b0,start_conv,result,done_conv);
//    assign conv=done_conv;
endmodule



