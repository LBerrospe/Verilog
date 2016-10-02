`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2016 21:28:33
// Design Name: 
// Module Name: RAM
// Project Name: 
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
	input clk,w_en,r_en,
	input [3:0] addr_r,addr_w,
	input [31:0] s_ALU,
	output reg [31:0] s_RAM
);
    reg [31:0] RAM [0:15];

	always@(negedge clk)
	begin
	   if(r_en)
	       s_RAM <= RAM[addr_r];
	   else if (w_en)
	       RAM[addr_w] <= s_ALU;
		
	end//always@
endmodule