`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:22:07 11/14/2019
// Design Name:   SignExtensionUnit
// Module Name:   /home/ise/Projects/Procesadorrr/TB_SEU.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtensionUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_SEU;

	// Inputs
	reg [25:0] instruction;
	reg [1:0] seuSignal;

	// Outputs
	wire [63:0] seuOutput;

	// Instantiate the Unit Under Test (UUT)
	SignExtensionUnit uut (
		.instruction(instruction), 
		.seuSignal(seuSignal), 
		.seuOutput(seuOutput)
	);

	initial begin
		// Initialize Inputs
		instruction = 12'b000110001111;
		seuSignal = 00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		instruction = 26'b00000000000000000000111111;
		seuSignal = 01;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		instruction = 19'b1000000000000000000;
		seuSignal = 10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		instruction = 9'b100010000;
		seuSignal = 11;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      
endmodule

