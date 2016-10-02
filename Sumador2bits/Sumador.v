`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2016 11:08:36
// Design Name: 
// Module Name: Sumador
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

//Definir modulo
module Sumador(
//Puertos I/O
    input A,B,CARRY_IN,
    output SUM,CARRY_OUT
    );
//Se;ales internas
wire cable1;
wire cable2;
wire cable3;
//Cuerpo del modulo

medioSumador uno(
    .i0(A), .i1(B),
    .resXOR(cable1), .resAND(cable2)
);

medioSumador dos(
    .i0(CARRY_IN), .i1(cable1),
    .resXOR(SUM), .resAND(cable3)
);

assign CARRY_OUT = cable3 | cable2;

endmodule
