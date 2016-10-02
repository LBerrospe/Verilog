`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas 
// 
// Create Date: 30.04.2016 21:24:18
// Design Name: CONT
// Module Name: CONT
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


module Count(
    // I/O
	input CP,
	output reg [3:0] out_addr_ROM
);
    
    reg [3:0] auxout_addr_ROM = 4'b1111;
    
    always@(CP)
    begin
        auxout_addr_ROM <= auxout_addr_ROM + 1;
        out_addr_ROM <= auxout_addr_ROM;
    end
endmodule