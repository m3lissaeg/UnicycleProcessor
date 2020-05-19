`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:07 11/14/2019 
// Design Name: 
// Module Name:    mux5 
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
module mux5(
    input [4:0] inputA,
    input [4:0] inputB,
    input controlSignal,
    output reg [4:0] outMux
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
