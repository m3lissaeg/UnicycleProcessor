`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:53:50 11/13/2019
// Design Name:   Sumador4
// Module Name:   /home/ise/Projects/Procesadorrr/TB_Sumador4.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sumador4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_Sumador4;

	// Inputs
	reg [63:0] inputPC;

	// Outputs
	wire [63:0] Nextinst;

	// Instantiate the Unit Under Test (UUT)
	Sumador4 uut (
		.inputPC(inputPC), 
		.Nextinst(Nextinst)
	);

	initial begin
		// Initialize Inputs
		inputPC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

