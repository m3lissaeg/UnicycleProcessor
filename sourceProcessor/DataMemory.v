`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:01 11/06/2019 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemoy(
	 input clk,
    input [12:0] Addres, // alures 
	 input memWr,
    input memRd,
	 input [7:0] sw,
	 input [63:0] datawr,
	 output reg [63:0] datard,
	 output reg [7:0] leds
    );
reg [7:0] Dm [255:0];
initial 
	$readmemh("DataMemory.mem", Dm);  
always @(posedge clk) begin
	if(Addres[8] && memWr && !memRd) begin
		leds = datawr[7:0];
	end
	else
		leds = 8'bx;
end

always @(memWr, Addres, memRd, datawr, sw) begin
	if(memWr && !memRd && !Addres[8]) begin
		Dm[Addres] = datawr[63:56];
		Dm[Addres+1] = datawr[55:48];
		Dm[Addres+2] = datawr[47:40];
		Dm[Addres+3] = datawr[39:32];
		Dm[Addres+4] = datawr[31:24];
		Dm[Addres+5] = datawr[23:16];
		Dm[Addres+6] = datawr[15:8];
		Dm[Addres+7] = datawr[7:0];
	
	end
	else if (!memWr && memRd && !Addres[8]) begin
		datard = {Dm[Addres], Dm[Addres+1], Dm[Addres+2],
					 Dm[Addres+3], Dm[Addres+4], Dm[Addres+5],
					 Dm[Addres+6], Dm[Addres+7]};
	end
	else if (!memWr && memRd && Addres[8]) begin
		datard = {{56{sw[7]}} , sw[7:0]};
	end
	else begin
		datard = 64'b0;
	end
end
endmodule
