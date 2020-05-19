`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:57:04 11/13/2019
// Design Name:   SumadorBranch
// Module Name:   /home/ise/Projects/Procesadorrr/TB_SumadorBranch.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SumadorBranch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_SumadorBranch;

	// Inputs
	reg [63:0] inputPC;
	reg [63:0] inputSEU;

	// Outputs
	wire [63:0] Nextinst;

	// Instantiate the Unit Under Test (UUT)
	SumadorBranch uut (
		.inputPC(inputPC), 
		.inputSEU(inputSEU), 
		.Nextinst(Nextinst)
	);

	initial begin
		// Initialize Inputs
		inputPC = -15;
		inputSEU = 5;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

