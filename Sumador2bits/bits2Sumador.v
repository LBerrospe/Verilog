`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2016 12:28:00
// Design Name: 
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


module bits2Sumador(
    input A0,B0,A1,B1,
    output SUM0,SUM1,CARRY_OUT0
    );
    
    wire cable1;
    
    Sumador uno(
    .A(A0), .B(B0), .CARRY_IN(),
    .SUM(SUM0), .CARRY_OUT(cable1)
    );
    
        Sumador dos(
    .A(A1), .B(B1), .CARRY_IN(cable1),
    .SUM(SUM1), .CARRY_OUT(CARRY_OUT0)
    );
    
endmodule
