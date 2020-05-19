`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:29 11/06/2019 
// Design Name: 
// Module Name:    InstructionMemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionMemory(
	input [63:0] pcAddres,
	output reg [31:0] instructionIm
    );

reg [7:0] Imemory [255:0];
initial begin
	$readmemh("Instrucciones1.txt", Imemory);	
end

always @(pcAddres) begin
	instructionIm <= {Imemory[pcAddres], Imemory[pcAddres+1], Imemory[pcAddres+2], Imemory[pcAddres +3]};
end
endmodule
