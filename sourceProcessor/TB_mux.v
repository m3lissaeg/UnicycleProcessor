`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:00:01 11/13/2019
// Design Name:   mux
// Module Name:   /home/ise/Projects/Procesadorrr/TB_mux.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_mux;

	// Inputs
	reg [63:0] inputA;
	reg [63:0] inputB;
	reg controlSignal;

	// Outputs
	wire [63:0] outMux;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.inputA(inputA), 
		.inputB(inputB), 
		.controlSignal(controlSignal), 
		.outMux(outMux)
	);

	initial begin
		// Initialize Inputs
		inputA = 64'b0;
		inputB = 64'b1;
		controlSignal = 0;

		// Wait 100 ns for global reset to finish
		#100;
      inputA = 64'b0;
		inputB = 64'b1;
		controlSignal = 1;

		// Wait 100 ns for global reset to finish
		#100;  
		// Add stimulus here

	end
      
endmodule

