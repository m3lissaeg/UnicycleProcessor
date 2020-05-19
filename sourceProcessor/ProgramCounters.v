`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:55 11/06/2019 
// Design Name: 
// Module Name:    ProgramCounters 
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
module ProgramCounters(
	input [63:0] nextinst,
	input clk,
	output reg [63:0] inst
    );
	 
//initial begin
//	inst = 64'b0;
//end

always @(posedge clk) 
begin
	case(nextinst)
		64'bx : inst <= 64'b0;
		default : inst <= nextinst;
	endcase
end
endmodule
