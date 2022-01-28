`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2022 20:29:29
// Design Name: 
// Module Name: control_FSM
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


module control_FSM(
    input  clk, start,
    input  done_conv,
    output reg [3:0] current_state, next_state,
    output reg shift_right, 
    output reg start_conv, 
    output reg [14:0] address, 
    output reg done                      
    );
    
    reg  [14:0] i,j,addr_i, addr_j; 
    reg [3:0]   IDLE = 4'd0,    RP1 = 4'd1, RP2 = 4'd2, RP3 = 4'd3, RP4 = 4'd4,
                RP5 = 4'd5 ,    RP6 = 4'd6, RP7 = 4'd7, RP8 = 4'd8, RP9 = 4'd9,
                CONV = 4'd10,   INCR_J = 4'd11;     
                
    initial begin
    current_state = IDLE;   //next_state =0;
    i = 0; j = 0;
    shift_right = 0;        start_conv = 0; 
    address = 0;            done = 0;    
    end
    
    always @(posedge clk) 
    begin
        case(current_state)
            IDLE: begin
                    shift_right = 0; start_conv = 0;
                    if(start) begin 
                        done = 0;
                        i=0; j=0;
                        next_state = RP1;
                    end
                    else 
                        next_state = IDLE;
                    end
            RP1: begin
                    shift_right = 1; 
                    start_conv = 0; 
                    done =0 ; 
                    addr_i = i-1;
                    addr_j = j-1;
                    next_state = RP2; 
                 end
            RP2: begin
                    shift_right = 1; 
                    addr_i = i-1;
                    addr_j = j;
                    next_state = RP3; 
                 end
            RP3: begin
                    shift_right = 1; 
                    addr_i = i-1;
                    addr_j = j+1;
                    next_state = RP4; 
                 end
            RP4: begin
                    shift_right = 1; 
                    addr_i = i;
                    addr_j = j-1;
                    next_state = RP5; 
                 end
            RP5: begin
                    shift_right = 1; 
                    addr_i = i;
                    addr_j = j;
                    next_state = RP6; 
                 end
            RP6: begin
                    shift_right = 1; 
                    addr_i = i;
                    addr_j = j+1;
                    next_state = RP7; 
                 end
            RP7: begin
                    shift_right = 1; 
                    addr_i = i+1;
                    addr_j = j-1;
                    next_state =RP8; 
                 end
            RP8: begin
                    shift_right = 1; 
                    addr_i = i+1;
                    addr_j = j;
                    next_state = RP9; 
                 end
            RP9: begin
                    shift_right = 0; 
                    addr_i = i+1;
                    addr_j = j+1;
                    next_state = CONV; 
                 end
                 
            CONV: begin
                    shift_right = 0; start_conv = 1;
           
                    if(done_conv) begin
                    next_state = INCR_J;
                    end
                    else                  
                    next_state = CONV;                                       
                    end
                    
         INCR_J: begin
            shift_right=0; start_conv=0;            
            if(j==127) begin
                if(i==127) begin
                done=1;
                next_state=IDLE;
                end
                else begin           
                i=i+1;
                j=0;
                next_state=RP1;
                end
            end
            else begin
                j=j+1;
                i=0;
                next_state=RP1;
            end
        end
        endcase
        current_state <= next_state;
    end
     
    always @(addr_i,addr_j) 
    begin
        address = (130 * (addr_i+1)) + (addr_j+1);   
    end
endmodule
