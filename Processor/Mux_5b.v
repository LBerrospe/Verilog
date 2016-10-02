`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas
// 
// Create Date: 14.05.2016 17:43:20
// Design Name: Mux_5b
// Module Name: Mux_5b
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


module Mux_5b(
        input  RegDest,
        input  [4:0] a,b,
        output reg [4:0] wr
    );

    always@*
    begin
        case(RegDest)
            1'b0: wr = a;
            1'b1: wr = b;
        endcase
    end

endmodule
