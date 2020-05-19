`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:19 11/06/2019 
// Design Name: 
// Module Name:    AritgmeticLogicUnit 
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
module AritgmeticLogicUnit(
	input [63:0] A,
	input [63:0] B,
	input [2:0] aluOp,
	output reg [63:0] addres,
	output reg zeroCU
    );

	always @(aluOp,A,B) begin
		case(aluOp)
			3'b000 : begin
							addres <= A + B;
							if((A + B)==0)
								zeroCU <= 1;
							else
								zeroCU <= 0;
						end
			3'b001 : begin
							addres <= A - B;
							if((A - B)==0)
								zeroCU <= 1;
							else
								zeroCU <= 0;
						end
			3'b010 : begin
							addres <= A & B;
							if((A & B)==0)
								zeroCU <= 1;
							else
								zeroCU <= 0;
						end
			3'b011 : begin
							addres <= A | B;
							if((A || B)==0)
								zeroCU <= 1;
							else
								zeroCU <= 0;
						end
			3'b100 : begin
							addres <= B;
							if(B==0)
								zeroCU <= 1;
							else
								zeroCU <= 0;
						end
		endcase
	end
	
	
endmodule
