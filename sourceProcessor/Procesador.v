`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:51 11/14/2019 
// Design Name: 
// Module Name:    Procesador 
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
module Procesador(
    input clk,
    input wire [7:0] sw,
    output wire [7:0] leds
    );
//conexiones CU
	 wire reg2Loc;
    wire regWr;
    wire aluSrc;
    wire [1:0] seu;
    wire memWr;
    wire memRd;
    wire nextPc;
    wire [2:0] aluOp;
    wire memToReg;
//conexiones ALU
	wire [63:0] addres;
	wire zeroCU;
//conexiones DM
	wire [63:0] datard;
//conexiones IM
	wire [31:0] instructionIm;
//conexiones PC
	wire [63:0] inst;
//conexiones SEU
	wire [63:0] seuOutput;
//conexiones RF
	 wire [63:0] out1;
    wire [63:0] out2;
//conexiones sum4
	wire [63:0] Nextinst;
//conexiones sumB
	wire [63:0] NextinstB;
//conexiones muxnextpc
	wire [63:0] outMuxNextPC;
//conexiones muxalusrc
	wire [63:0] outMuxALUsrc;
//conexiones muxmemtoreg
	wire [63:0] outMuxMemToReg;
//conexiones muxreg2log
	wire [4:0] outMuxReg2Log;
	 //CU
ControlUnit instance_CU ( //ya
    .zeroCU(zeroCU), 
    .opCode(instructionIm[31:21]), 
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
	 // ALU
AritgmeticLogicUnit instance_ALU ( //ya
    .A(out1), 
    .B(outMuxALUsrc), 
    .aluOp(aluOp), 
    .addres(addres), 
    .zeroCU(zeroCU)
    );
	// DM
DataMemoy instance_DM ( //ya
    .clk(clk), 
    .Addres(addres[12:0]), 
    .memWr(memWr), 
    .memRd(memRd), 
    .sw(sw), 
    .datawr(out2), 
    .datard(datard), 
    .leds(leds)
    );
	 //IM
InstructionMemory instance_IM ( //ya
    .pcAddres(inst), 
    .instructionIm(instructionIm)
    );
	 //PC
ProgramCounters instance_PC ( //ya
    .nextinst(outMuxNextPC), 
    .clk(clk), 
    .inst(inst)
    );
	 //SEU
SignExtensionUnit instance_SEU ( //ya
    .instruction(instructionIm[25:0]), 
    .seuSignal(seu), 
    .seuOutput(seuOutput)
    );
	 //RF
registerFile instance_RF ( //ya
    .Rn(instructionIm[9:5]), 
    .Rm(outMuxReg2Log), 
    .RegWr(regWr), 
    .Rd(instructionIm[4:0]), 
    .data(outMuxMemToReg), 
    .clk(clk), 
    .out1(out1), 
    .out2(out2)
    );
		
//sumadores
	//sum4
Sumador4 instance_Sum4 ( //ya
    .inputPC(inst), 
    .Nextinst(Nextinst)
    );
	 //sumB
SumadorBranch instance_SumB ( //ya
    .inputPC(inst), 
    .inputSEU(seuOutput), 
    .Nextinst(NextinstB)
    );
//MUX64
	//MUXNEXTPC
mux instance_MuxNextPC ( //YA
    .inputA(Nextinst), 
    .inputB(NextinstB), 
    .controlSignal(nextPc), 
    .outMux(outMuxNextPC)
    );
	 //MUXALUSRC
mux instance_MuxALUsrc ( //ya
    .inputA(out2), 
    .inputB(seuOutput), 
    .controlSignal(aluSrc), 
    .outMux(outMuxALUsrc)
    );
	 //MUXMEMTOREG
mux instance_MuxMemToReg ( //ya
    .inputA(addres), 
    .inputB(datard), 
    .controlSignal(memToReg), 
    .outMux(outMuxMemToReg)
    );
//MUX5
	//MUXREG2LOG
mux5 instance_MuxReg2Log ( //ya
    .inputA(instructionIm[20:16]), 
    .inputB(instructionIm[4:0]), 
    .controlSignal(reg2Loc), 
    .outMux(outMuxReg2Log)
    );	

endmodule
