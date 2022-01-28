`timescale 1ns / 1ps

module exp8_tb();	
	// -- Inputs and Outputs -- //
    reg clk;
    reg start;
	wire done;
    wire [19:0] result;
    wire [14:0] address;
  
    top 
    UUT(
        .clk(clk),
        .start(start),
		.done(done),.address(address),
        .result(result)
    );
    parameter CLK_PER=0.002;
	initial clk = 0; 
    always #(CLK_PER) clk = ~clk; 
	// ---------------------- //
	
	integer out_file;  // Output file handler ID		
	initial begin
//	done_conv=UUT.FSM.done_conv;
       start = 0; 
	   out_file= $fopen("output_imagee.txt","w");
       #100;
       start = 1;      
       // We will wait for 128x128 convolution operations       
       repeat(16384)
//              repeat(1)
       #(45*CLK_PER);  // Duration of one complete iteration
       
       #(45*CLK_PER);   // Wait for last result
       #(6*CLK_PER);
	   $fclose(out_file);
       $finish();
		 
	end

	// ----- Write result to output file ----- //
	// This may be incompatible with your design. You may choose your own sampling strategy and code it seperately. 
	always @ (posedge UUT.FSM.done_conv)
	 // Sample output when done_conv signal is falling   
	begin
	#(CLK_PER*3); 
	   // This will prevent recording any uncalculated results at the beginning.
	
	   if(!(result[10] === 1'bx)) begin
	    $fdisplay(out_file,"%d",result);
//	   else
	       //$fdisplay(out_file,"%d",result);
	 end end 
	// --------------------------------------- //  
	
endmodule
