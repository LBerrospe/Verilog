`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Guadalajara 
// Engineer: Berrospe Barajas Hector Eduardo
// 
// Create Date: 25.02.2016 19:40:06
// Design Name: decodificador 2-4 condicional IF & CASE.
// Module Name: op2
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


module op2(
    input [3:0] X,Y,
    input H,
    output reg [7:0] C
    );
    
    always@*
        begin
            if (H == 1'b1)
                C = Y - X * X;
            else
                C = 8'b00000000;
        end
endmodule
