`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Guadalajara 
// Engineer: Berrospe Barajas Hector Eduardo
// 
// Create Date: 05.03.2016 14:35:42
// Design Name: decodificador 2-4 condicional IF.
// Module Name: decoIf
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


module decoIf(
//I/O
        input [1:0] A,
        input CLK,
        output reg [3:0] D
    );
    
    always @(A or CLK)
    begin
        if (CLK == 1'b1)
        begin
            D[0] = ~A[0] & ~A[1];
            D[1] =  A[0] & ~A[1];
            D[2] = ~A[0] & A[1];
            D[3] =  A[0] & A[1];
        end
            
        else
            D = 4'b0000;
    end
endmodule
