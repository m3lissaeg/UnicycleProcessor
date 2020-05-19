`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:26:50 11/14/2019
// Design Name:   Procesador
// Module Name:   /home/ise/Projects/Procesadorrr/TB_Procesador.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Procesador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_Procesador;

	// Inputs
	reg clk;
	reg [7:0] sw;

	// Outputs
	wire [7:0] leds;

	// Instantiate the Unit Under Test (UUT)
	Procesador uut (
		.clk(clk), 
		.sw(sw), 
		.leds(leds)
	);
always #50 clk = !clk;
	initial begin
		// Initialize Inputs
		clk = 1;
		sw = 8'b00000100;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here

	end
      
endmodule

