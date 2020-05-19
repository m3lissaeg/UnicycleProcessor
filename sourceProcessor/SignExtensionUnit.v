`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    16:39:06 11/06/2019
// Design Name:
// Module Name:    ControlUnit
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
module SignExtensionUnit(
    // input zeroCU,
    input [25:0] instruction ,
    input [1:0] seuSignal, // 00 -> AluImmediate , 01 ->BranchAddres , 10 ->CondBranchAddres , 11 -> DtAddress
    output reg [63:0] seuOutput
);
always @(instruction,seuSignal) begin

case (seuSignal)
    2'b00: begin  
			  seuOutput = {52'b0 , instruction[21:10]};// AluImmediate ;           
			  end
	 2'b01: begin
			//seuOutput = {38'b0 , instruction[25:0]};
			  seuOutput = {{36{instruction[25]}},instruction[25:0] , 2'b0};  // BranchAddres
			  end
	 2'b10: begin
			//seuOutput = {45'b0 , instruction[23:5]};
			  seuOutput = {{43{instruction[23]}} , instruction[23:5] , 2'b0};  // CondBranchAddres
			  end
	 2'b11: begin 
			//seuOutput = {55'b0 , instruction[20:12]};
			  seuOutput = {{55{instruction[25]}} , instruction[20:12]};  // DtAddress
			  end
    default  : seuOutput = 64'b0;
   endcase
end
endmodule
