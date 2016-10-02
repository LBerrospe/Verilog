`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2016 21:28:06
// Design Name: 
// Module Name: ALU
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



module ALU(
	input [31:0] d_ROM1,d_ROM2,
	input [3:0] sel_op,
	output reg [31:0] s_ALU,
	output reg ZF
);
	//Se;ales internas
	//Cuerpo del modulo
	always@(d_ROM1 or d_ROM2 or sel_op)
	begin
		case(sel_op)
		//	4'b0000: s_ALU <=;
			4'b0100: s_ALU <=   d_ROM1 + d_ROM2;
			4'b0101: s_ALU <=   d_ROM1 - d_ROM2;
			4'b0110: s_ALU <=   d_ROM1 * d_ROM2;
			4'b0111: s_ALU <=   d_ROM1 / d_ROM2;
			4'b1000: s_ALU <=   d_ROM1 & d_ROM2;
			4'b1001: s_ALU <=   d_ROM1 | d_ROM2;
			4'b1010: s_ALU <= ~(d_ROM1 & d_ROM2);
			4'b1011: s_ALU <= ~(d_ROM1 | d_ROM2);
			4'b1100: s_ALU <=   d_ROM1 ^ d_ROM2;
			4'b1101: s_ALU <= ~(d_ROM1 ^ d_ROM2);
			
			default ZF <= 1'b0;

		endcase//FIN sel_op
	end//END always@
endmodule
