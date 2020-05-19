`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:35 11/06/2019 
// Design Name: 
// Module Name:    RegisterFile 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:37 11/05/2019 
// Design Name: 
// Module Name:    registerFile 
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
module registerFile(
    input [4:0] Rn,
    input [4:0] Rm,
    input RegWr,
    input [4:0] Rd,
    input [63:0] data,
    input clk,
    output reg [63:0] out1,
    output reg [63:0] out2
     
    );

reg[63:0] Rf [31:0];
initial
	$readmemb("RegisterFile.mem", Rf);

   initial 
	begin 
		Rf[31] = 0; // Xzr
	end  


			 
			 
always @(posedge clk) begin
    if (RegWr && Rd!= 31 ) begin // Rd no puede ser el Xzr
        Rf[Rd]<= data;   
    end 
end  


always @(Rn,Rm,RegWr,Rd, data) begin
	out1 <= Rf[Rn];
	out2 <= Rf[Rm];   
end  




endmodule
