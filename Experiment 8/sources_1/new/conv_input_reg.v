


module conv_input_reg(
input clk,enable,
input [7:0] data_in,
output reg [71:0] data_out);
initial begin 
data_out=0; end
always@(posedge clk) begin
    if(enable) begin
        data_out = data_out >> 8; 
        data_out [71:64] = data_in; 
          end
          end
endmodule