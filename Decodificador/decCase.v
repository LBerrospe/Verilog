`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Guadalajara 
// Engineer: Berrospe Barajas Hector Eduardo
// 
// Create Date: 05.03.2016 14:38:48
// Design Name: decodificador 2-4 condicional CASE.
// Module Name: decCase
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


module decCase(
//I/O
        input [1:0] A,
        input CLK,
        output reg [3:0] D
    );
    
    always @(A or CLK)
        begin
        case(CLK)
            1'b1: case (A)
                2'b00 : D = 4'b0001;
                2'b01 : D = 4'b0010;
                2'b10 : D = 4'b0100;
                2'b11 : D = 4'b1000;
          

            default: D = 4'b0000;//default: case(A)
            endcase//case(A)
        default: D = 4'b0000;//default: case(CLK)
        endcase//case(CLK)
    
    end//end always
endmodule