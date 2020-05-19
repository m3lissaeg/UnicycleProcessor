`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:55:20 11/13/2019 
// Design Name: 
// Module Name:    SumadorBranch 
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
module SumadorBranch(
    input [63:0] inputPC,
	 input [63:0] inputSEU,
    output [63:0] Nextinst
    );
assign Nextinst = inputPC + inputSEU;	 

endmodule
