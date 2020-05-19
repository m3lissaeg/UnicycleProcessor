`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:49:09 11/13/2019 
// Design Name: 
// Module Name:    Sumador4 
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
module Sumador4(
    input [63:0] inputPC,
    output [63:0] Nextinst
    );
assign Nextinst = inputPC + 4;	 

endmodule
