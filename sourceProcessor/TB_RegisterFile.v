`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:56:25 11/14/2019
// Design Name:   registerFile
// Module Name:   /home/ise/Projects/Procesadorrr/TB_RegisterFile.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_RegisterFile;

	// Inputs
	reg [4:0] Rn;
	reg [4:0] Rm;
	reg RegWr;
	reg [4:0] Rd;
	reg [63:0] data;
	reg clk;

	// Outputs
	wire [63:0] out1;
	wire [63:0] out2;

	// Instantiate the Unit Under Test (UUT)
	registerFile uut (
		.Rn(Rn), 
		.Rm(Rm), 
		.RegWr(RegWr), 
		.Rd(Rd), 
		.data(data), 
		.clk(clk), 
		.out1(out1), 
		.out2(out2)
	);
always #50 clk = !clk;
	initial begin
		// Initialize Inputs
		Rn = 31;
		Rm = 27;
		RegWr = 1;
		Rd = 27;
		data = 256;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

