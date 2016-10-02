`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2016 12:28:00
// Design Name: sumador 2 bits
// Module Name: bits2Sumador
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


module bits4Sumador(
    input [3:0] A , B,
    output [4:0] SUM
    );
    
    wire cable1,cable2,cable3;
    
    Sumador uno(
    .A(A[0]), .B(B[0]), .CARRY_IN(0),
    .SUM(SUM[0]), .CARRY_OUT(cable1)
    );
    
        Sumador dos(
    .A(A[1]), .B(B[1]), .CARRY_IN(cable1),
    .SUM(SUM[1]), .CARRY_OUT(cable2)
    );
    
        Sumador tres(
    .A(A[2]), .B(B[2]), .CARRY_IN(cable2),
    .SUM(SUM[2]), .CARRY_OUT(cable3)
    );
    
        Sumador cuatro(
    .A(A[3]), .B(B[3]), .CARRY_IN(cable3),
    .SUM(SUM[3]), .CARRY_OUT(SUM[4])
    );
    
endmodule
