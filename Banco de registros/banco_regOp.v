`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2016 11:25:25
// Design Name: 
// Module Name: banco_regOp
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


module banco_regOp(
//I/O 

    //Operacion
    input [7:0] X,Y,
    input C,
    ////Direccion
    input [2:0] w_addr,
    input en_addr,
    //Entradas a los registros
    input reset,clk,
    //Salida de multiplexor
    input [2:0] SEL,
    output [15:0] R
    );
    
    wire [15:0] resAd;
    
    operacion op(
        .X(X), .Y(Y),
        .C(C),
        .res(resAd)
    );
    
    
    banco_registro ban_reg(
    
        .w_addr(w_addr),
        .en_addr(en_addr),
    
        .d(resAd),
        .reset(reset), .clk(clk),
    
        .SEL(SEL),
        .R(R)
    );
    
endmodule
