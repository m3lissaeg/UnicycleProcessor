`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:35:27 11/14/2019
// Design Name:   ProgramCounters
// Module Name:   /home/ise/Projects/Procesadorrr/TB_PC.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramCounters
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_PC;

	// Inputs
	reg [63:0] nextinst;
	reg clk;

	// Outputs
	wire [63:0] inst;

	// Instantiate the Unit Under Test (UUT)
	ProgramCounters uut (
		.nextinst(nextinst), 
		.clk(clk), 
		.inst(inst)
	);
	always #10 clk = !clk;

	initial begin
		// Initialize Inputs
		nextinst = 64'bx;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

