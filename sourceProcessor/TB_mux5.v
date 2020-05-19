`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:06:37 11/13/2019
// Design Name:   mux5
// Module Name:   /home/ise/Projects/Procesadorrr/TB_mux5.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_mux5;

	// Inputs
	reg [4:0] inputA;
	reg [4:0] inputB;
	reg controlSignal;

	// Outputs
	wire [4:0] outMux;

	// Instantiate the Unit Under Test (UUT)
	mux5 uut (
		.inputA(inputA), 
		.inputB(inputB), 
		.controlSignal(controlSignal), 
		.outMux(outMux)
	);

	initial begin
		// Initialize Inputs
		inputA = 5'b0;
		inputB = 5'b1;
		controlSignal = 0;

		// Wait 100 ns for global reset to finish
		#100;
		inputA = 5'b0;
		inputB = 5'b1;
		controlSignal = 1;
      #100;
		// Add stimulus here

	end
      
endmodule

