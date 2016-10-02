`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Guadalajara 
// Engineer: Berrospe Barajas Hector Eduardo
// 
// Create Date: 05.03.2016 14:39:22
// Design Name: decodificador 2-4 condicional CASE.
// Module Name: decOpCase
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


module decOpCase(
//I/O
    input [3:0] A,B,
    input [1:0] DEC,
    input ENABLE,
    output [7:0] op0,op1,op2,op3
    );
    
    wire [3:0] cable;
    
    decCase decoCase(
        .A(DEC), .CLK(ENABLE),
        .D(cable)
    );
    
    op0 operacion0(
        .X(A), .Y(B), .H(cable[0]),
        .C(op0) 
        );
        
    op1 opracion1(
        .X(A), .Y(B), .H(cable[1]),
        .C(op1) 
        );
        
    op2 opracion2(
        .X(A), .Y(B), .H(cable[2]),
        .C(op2) 
        );
        
    op3 opracion3(
        .X(A), .Y(B), .H(cable[3]),
        .C(op3) 
        );
        
endmodule
        