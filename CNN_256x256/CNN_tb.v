`timescale 1ns / 1ps

module CNN_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] numberOfTimes_PatterDetected;

	// Instantiate the Unit Under Test (UUT)
	CNN_256 uut (
		.clk(clk),
		.rst(rst),
		.numberOfTimes_PatterDetected(numberOfTimes_PatterDetected)		
	);
	
	initial begin
		clk = 0;
		rst = 1;
		#10;
		rst = 0;
	end
	
	always #0.01 clk = ~clk;
endmodule