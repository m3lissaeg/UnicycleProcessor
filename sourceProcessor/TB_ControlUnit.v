`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:37:57 11/14/2019
// Design Name:   ControlUnit
// Module Name:   /home/ise/Projects/Procesadorrr/TB_ControlUnit.v
// Project Name:  Procesadorrr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ControlUnit;

	// Inputs
	reg zeroCU;
	reg [10:0] opCode;

	// Outputs
	wire reg2Loc;
	wire regWr;
	wire aluSrc;
	wire [1:0] seu;
	wire memWr;
	wire memRd;
	wire nextPc;
	wire [2:0] aluOp;
	wire memToReg;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.zeroCU(zeroCU), 
		.opCode(opCode), 
		.reg2Loc(reg2Loc), 
		.regWr(regWr), 
		.aluSrc(aluSrc), 
		.seu(seu), 
		.memWr(memWr), 
		.memRd(memRd), 
		.nextPc(nextPc), 
		.aluOp(aluOp), 
		.memToReg(memToReg)
	);

	initial begin
		zeroCU = 0;
		opCode = 11'b00010100000;
		#100;
		zeroCU = 0; //AND
		opCode = 11'b10001010000;
		#100;
		zeroCU = 0; //ADD
		opCode = 11'b10001011000;
		#100;
		zeroCU = 0; //ANDI
		opCode = 11'b10010010000;
		#100;
		zeroCU = 0;//ADDI
		opCode = 11'b10010001000;
		#100;
		zeroCU = 0;//ORR
		opCode = 11'b10101010000;
		#100;
		zeroCU = 0;//ORRI
		opCode = 11'b10110010000;
		#100;
		zeroCU = 0;//CBZ
		opCode = 11'b10110100000;
		#100;
		zeroCU = 0;//CBNZ
		opCode = 11'b10110101000;
		#100;
		zeroCU = 0;//SUB
		opCode = 11'b11001011000;
		#100;
		zeroCU = 0;//SUBI
		opCode = 11'b11010001000;
		#100;
		zeroCU = 0;//LDUR
		opCode = 11'b11111000010;
		#100;
		zeroCU = 0;//STUR
		opCode = 11'b11111000000;
		#100;
	
	end
      
endmodule

