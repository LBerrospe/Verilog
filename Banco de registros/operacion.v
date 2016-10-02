`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2016 23:56:26
// Design Name: 
// Module Name: operacion
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


module operacion(
    input [7:0] X,Y,
    input C,
    output reg [15:0] res
    );
    
    //Cuerpo modulo
    always@*
    begin//begin always
        case(C)
            1'b1 : res = X + Y * X;
            
            1'b0 : res = X * X - Y;
            
            default : res = 16'b0000000000000000; 
        endcase//endcase C
    end//end always
    
endmodule
