`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:59:41 11/13/2019
// Design Name:   DataMemoy
// Module Name:   /home/ise/Projects/Procesadorrr/TB_DataMemory.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemoy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_DataMemory;

	// Inputs
	reg clk;
	reg [12:0] Addres;
	reg memWr;
	reg memRd;
	reg [7:0] sw;
	reg [63:0] datawr;

	// Outputs
	wire [63:0] datard;
	wire [7:0] leds;

	// Instantiate the Unit Under Test (UUT)
	DataMemoy uut (
		.clk(clk), 
		.Addres(Addres), 
		.memWr(memWr), 
		.memRd(memRd), 
		.sw(sw), 
		.datawr(datawr), 
		.datard(datard), 
		.leds(leds)
	);
	
	always #10 clk = !clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		Addres = 13'b0000100000000;
		memWr = 1;
		memRd = 0;
		sw = 0;
		datawr = 7;

		// Wait 100 ns for global reset to finish
		#100;
      
		Addres = 13'b0000000000000;
		memWr = 1;
		memRd = 0;
		sw = 0;
		datawr = 8;
		
		#100;
      // LEER DE LOS SW
		Addres = 13'b0000100000000;
		memWr = 0;
		memRd = 1;
		sw = 9;
		datawr = 8;
		
		#100;
      
		Addres = 13'b0000000000000;
		memWr = 0;
		memRd = 1;
		sw = 0;
		datawr = 8;
		// Add stimulus here
		
	end
      
endmodule

