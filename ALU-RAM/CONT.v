`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2016 21:24:18
// Design Name: 
// Module Name: CONT
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


module CONT(
// I/O
	input CP,
	output reg en_ROM,
	output reg [3:0] s_addr_ROM
);
//Se;ales internas
    reg [3:0] auxs_addr_ROM = 4'b1111;
//Cuerpo del modulo
    always@(CP)
    begin
        auxs_addr_ROM <= auxs_addr_ROM + 1;
        s_addr_ROM <= auxs_addr_ROM;
        if(auxs_addr_ROM > 4'b1101)
            en_ROM = 2'b00;
        else
            en_ROM = 2'b11;
    end
endmodule