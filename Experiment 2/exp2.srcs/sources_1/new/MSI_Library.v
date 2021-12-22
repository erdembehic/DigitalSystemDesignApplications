`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2021 08:40:10
// Design Name: 
// Module Name: MSI_Library
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


module MSI_Library(

    );
endmodule


module DECODER(//4x16 decoder 
input [3:0] I, 
output reg [15:0] O
);

always @(I) begin 
    
    case(I)
    4'd0    :   O = 16'b0000_0000_0000_0001;
    4'd1    :   O = 16'b0000_0000_0000_0010;
    4'd2    :   O = 16'b0000_0000_0000_0100;
    4'd3    :   O = 16'b0000_0000_0000_1000;
    
    4'd4    :   O = 16'b0000_0000_0001_0000;
    4'd5    :   O = 16'b0000_0000_0010_0000;        
    4'd6    :   O = 16'b0000_0000_0100_0000;
    4'd7    :   O = 16'b0000_0000_1000_0000;
    
    4'd8    :   O = 16'b0000_0001_0000_0000;
    4'd9    :   O = 16'b0000_0010_0000_0000;
    4'd10    :   O = 16'b0000_0100_0000_0000;
    4'd11    :   O = 16'b0000_1000_0000_0000; 
    
    4'd12    :   O = 16'b0001_0000_0000_0000;
    4'd13    :   O = 16'b0010_0000_0000_0000;
    4'd14    :   O = 16'b0100_0000_0000_0000;
    4'd15    :   O = 16'b1000_0000_0000_0000; 
        
    default :   O=16'd0;
    endcase        
               
end
endmodule


module ENCODER(
input [3:0] I,
output  [1:0] OUT,
output  E );
wire [5:0]temp;

//always @(I) begin 
//    case(I)
//    4'b0000 : begin  OUT=2'bXX; E=1'b0; end
//    4'b0001 : begin  OUT=2'b00; E=1'b1; end
//    4'b001x : begin  OUT=2'b01; E=1'b1; end
//    4'b01xx : begin  OUT=2'b10; E=1'b1; end
//    4'b1xxx : begin  OUT=2'b11; E=1'b1; end
//    default : OUT=2'd0;
//    endcase
//end    
    
OR ORout1(I[3],I[2],OUT[1]); //i3 or i2 equals out1

NOT NOTi2(I[2],temp[0]);
NOT NOTi3(I[3],temp[1]); 
AND ANDout0_0(temp[0],temp[1],temp[2]);
AND ANDout0_1(I[1],temp[2],temp[3]); //
OR ORout0(temp[3],I[3],OUT[0]);

OR ORenable_0(I[0],I[1],temp[4]);
OR ORenable_1(I[2],I[3],temp[5]);
OR ORenable_2(temp[5],temp[4],E);

endmodule

module MUX( 
input [3:0] D,
input [1:0] S,
output  O);

assign O = ((~S[1] & ~S[0] & D[0]) | (~S[1] & S[0] & D[1]) | (~S[0] & S[1] & D[2]) | (S[1] & S[0] & D[3]));
//always@(S) begin
//    case(S)
//    2'd0  :  O=D[0];
//    2'd1  :  O=D[1];
//    2'd2  :  O=D[2];
//    2'd3  :  O=D[3];
//    default : O=1'bZ;
//    endcase
//    end
endmodule

module DEMUX(
input D,
input [1:0]S,
output [3:0] O);

    wire [5:0]temp;
    
    NOT NOT_0(S[0],temp[0]);
    NOT NOT_1(S[1],temp[1]);
    
    AND AND_0(temp[0],temp[1],temp[2]);
    AND AND_1(S[0],temp[1],temp[3]);
    AND AND_2(temp[0],S[1],temp[4]);
    AND AND_3(S[0],S[1],temp[5]);
    
    TRIcomp TRIcompO_0(temp[2],D,O[0]);
    TRIcomp TRIcompO_1(temp[3],D,O[1]);
    TRIcomp TRIcompO_2(temp[4],D,O[2]);
    TRIcomp TRIcompO_3(temp[5],D,O[3]);
endmodule
