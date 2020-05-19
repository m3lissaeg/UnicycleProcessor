`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:23:21 11/13/2019 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input [63:0] inputA,
    input [63:0] inputB,
    input controlSignal,
    output reg [63:0] outMux
    );

always @(inputA,inputB, controlSignal )
begin
		case(controlSignal)
		1'b0 : begin
				 outMux <= inputA;
				 end
		1'b1 : begin 
				 outMux <= inputB	;
				 end
		endcase
end
endmodule
