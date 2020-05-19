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
module ControlUnit(
    input zeroCU,
    input [10:0] opCode,
    output reg reg2Loc,
    output reg regWr,
    output reg aluSrc,
    output reg [1:0] seu,
    output reg memWr,
    output reg memRd,
    output reg nextPc,
    output reg [2:0] aluOp,
    output reg memToReg
	 );
always @(opCode) begin

case (opCode[10:5])
      6'b000101: begin // TIPO B;
					 reg2Loc <= 1'bx;
					 regWr <= 1'b0;
					 aluSrc <= 1'bx;
					 seu <= 2'b01;
					 memWr <= 1'b0;
					 memRd <= 1'b0;
					 nextPc <= 1'b1;
					 aluOp <= 3'bxxx;
					 memToReg <= 1'bx;
                 end
      6'b100010: begin
                    case (opCode[3])
									0:	begin //AND
									    reg2Loc <= 1'b0;
										 regWr <= 1'b1;
										 aluSrc <= 1'b0;
										 seu <= 2'bxx;
										 memWr <= 1'b0;
										 memRd <= 1'b0;
										 nextPc <= 1'b0;
										 aluOp <= 3'b010;
										 memToReg <= 1'b0;
										end
									1:	begin //ADD 
										 reg2Loc <= 1'b0;
										 regWr <= 1'b1;
										 aluSrc <= 1'b0;
										 seu <= 2'bxx;
										 memWr <= 1'b0;
										 memRd <= 1'b0;
										 nextPc <= 1'b0;
										 aluOp <= 3'b000;
										 memToReg <= 1'b0;
										end
                 endcase
					  end
      6'b100100 : begin
                    case (opCode[3])
									0:	begin	//ANDI
									    reg2Loc <= 1'bx;
										 regWr <= 1'b1;
										 aluSrc <= 1'b1;
										 seu <= 2'b00;
										 memWr <= 1'b0;
										 memRd <= 1'b0;
										 nextPc <= 1'b0;
										 aluOp <= 3'b010;
										 memToReg <= 1'b0;
										end
									1:	begin	//ADDI 
										 reg2Loc <= 1'bx;
										 regWr <= 1'b1;
										 aluSrc <= 1'b1;
										 seu <= 2'b00;
										 memWr <= 1'b0;
										 memRd <= 1'b0;
										 nextPc <= 1'b0;
										 aluOp <= 3'b000;
										 memToReg <= 1'b0;
										end
                 endcase
                 end
      6'b101010: begin //ORR;
						   reg2Loc <= 1'b0;
							regWr <= 1'b1;
						   aluSrc <= 1'b0;
							seu <= 2'bxx;
							memWr <= 1'b0;
							memRd <= 1'b0;
							nextPc <= 1'b0;
							aluOp <= 3'b011;
							memToReg <= 1'b0;
                 end
      6'b101100: begin    //ORRI;
						  reg2Loc <= 1'bx;
							regWr <= 1'b1;
						   aluSrc <= 1'b1;
							seu <= 2'b00;
							memWr <= 1'b0;
							memRd <= 1'b0;
							nextPc <= 1'b0;
							aluOp <= 3'b011;
							memToReg <= 1'b0;
                 end
      6'b101101: begin
						  case (opCode[3])
									0:	begin	//CBZ
									    reg2Loc <= 1'b1;
										 regWr <= 1'b0;
										 aluSrc <= 1'b0;
										 seu <= 2'b10;
										 memWr <= 1'b0;
										 memRd <= 1'b0;
										 nextPc <= zeroCU;
										 aluOp <= 3'b100;
										 memToReg <= 1'bx;
										end
									1:	begin	//CBNZ 
									    reg2Loc <= 1'b1;
										 regWr <= 1'b0;
										 aluSrc <= 1'b0;
										 seu <= 2'b10;
										 memWr <= 1'b0;
										 memRd <= 1'b0;
										 nextPc <= !zeroCU;
										 aluOp <= 3'b100;
										 memToReg <= 1'bx;
										 end
                 endcase
                 end
      6'b110010: begin // SUB
						 reg2Loc <= 1'b0;
							regWr <= 1'b1;
						   aluSrc <= 1'b0;
							seu <= 2'bxx;
							memWr <= 1'b0;
							memRd <= 1'b0;
							nextPc <= 1'b0;
							aluOp <= 3'b001;
							memToReg <= 1'b0;
                 end
      6'b110100: begin // SUBI;
						  reg2Loc <= 1'bx;
							regWr <= 1'b1;
						   aluSrc <= 1'b1;
							seu <= 2'b00;
							memWr <= 1'b0;
							memRd <= 1'b0;
							nextPc <= 1'b0;
							aluOp <= 3'b001;
							memToReg <= 1'b0;
                 end
      6'b111110: begin//LDUR O STUR
						  case (opCode[1])
									0:	begin //STUR
									    reg2Loc <= 1'b1;
										 regWr <= 1'b0;
										 aluSrc <= 1'b1;
										 seu <= 2'b11;
										 memWr <= 1'b1;
										 memRd <= 1'b0;
										 nextPc <= 1'b0;
										 aluOp <= 3'b000;
										 memToReg <= 1'bx; // preguntar
										end
									1:	begin//LDUR 
										 reg2Loc <= 1'bx;
										 regWr <= 1'b1;
										 aluSrc <= 1'b1;
										 seu <= 2'b11;
										 memWr <= 1'b0;
										 memRd <= 1'b1;
										 nextPc <= 1'b0;
										 aluOp <= 3'b000;
										 memToReg <= 1'b1;
										end
                 endcase
                 end

      default  : begin
                  reg2Loc <= 1'bx;
						regWr <= 1'bx;
	        			aluSrc <= 1'bx;
						seu <= 2'bxx;
						memWr <= 1'bx;
						memRd <= 1'bx;
						nextPc <= 1'bx;
						aluOp <= 3'bxxx;
						memToReg <= 1'bx; 
                 end
   endcase
end 
endmodule 