`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas
// 
// Create Date: 13.05.2016 17:09:52
// Design Name: RAM
// Module Name: RAM
// Project Name: Processor
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM(
	   input w_en,r_en,clk,
	   input [31:0] addr,Dato,
	   output reg [31:0] resRAM
    );
    
    
    reg [31:0] RAM [0:15];

	always@(negedge clk)
	begin

	   if(r_en)
	       resRAM <= RAM[addr];
	   else if (w_en)
	       RAM[addr] <= Dato;	
	end//always@
endmodule