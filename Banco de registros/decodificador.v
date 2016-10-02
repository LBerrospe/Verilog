`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2016 00:25:11
// Design Name: 
// Module Name: decodificador
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


module decodificador(
input [2:0] w_addr,
input en_addr,
output reg [7:0]salida
    );
    always@ (*)
    begin
    case(en_addr)
		1'b0: salida=8'b00000000;
		1'b1: begin
			case(w_addr)
				3'b000: salida=8'b00000001;
				3'b001: salida=8'b00000010;
				3'b010: salida=8'b00000100;
				3'b011: salida=8'b00001000;
				3'b100: salida=8'b00010000;
				3'b101: salida=8'b00100000;
				3'b110: salida=8'b01000000;
				3'b111: salida=8'b10000000;
			endcase
		end
    endcase
    
   end
endmodule