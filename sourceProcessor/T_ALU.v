`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:19 11/14/2019
// Design Name:   AritgmeticLogicUnit
// Module Name:   /home/ise/Projects/Procesadorrr/T_ALU.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AritgmeticLogicUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_ALU;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;
	reg [2:0] aluOp;

	// Outputs
	wire [63:0] addres;
	wire zeroCU;

	// Instantiate the Unit Under Test (UUT)
	AritgmeticLogicUnit uut (
		.A(A), 
		.B(B), 
		.aluOp(aluOp), 
		.addres(addres), 
		.zeroCU(zeroCU)
	);

	initial begin
		// Initialize Inputs
		A = 10;
		B = 5;
		aluOp = 3'b100;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		A = 10;
		B = 5;
		aluOp = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		A = 10;
		B = 5;
		aluOp = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		A = 10;
		B = 5;
		aluOp = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		A = 0;
		B = 0;
		aluOp = 3'b011;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	end
      
endmodule

