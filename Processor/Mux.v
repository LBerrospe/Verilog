`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas 
// 
// Create Date: 13.05.2016 17:09:24
// Design Name: Mux
// Module Name: Mux
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


module Mux(
        input  sel,
        input  [31:0] a,b,
        output reg [31:0] m
    );
    
    always@*
    begin
        case (sel)
            1'b0: m = a;
            1'b1: m = b;
        endcase
    end
    
endmodule
