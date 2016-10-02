`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas 
// 
// Create Date: 13.05.2016 18:15:23
// Design Name: Mux_R
// Module Name: Mux_R
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


module Mux_R(
        input  [4:0]  sel,
        input  [31:0] q00, q01, q02, q03, q04, q05, q06, q07, q08, q09,
        input  [31:0] q10, q11, q12, q13, q14, q15, q16, q17, q18, q19,
        input  [31:0] q20, q21, q22, q23, q24, q25, q26, q27, q28, q29,
        input  [31:0] q30, q31,
        output reg [31:0] r   
    );
    
    always@*
    begin
        case(sel)
            5'b 00000: r = q00;
            5'b 00001: r = q01;
            5'b 00010: r = q02;
            5'b 00011: r = q03;
            5'b 00100: r = q04;
            5'b 00101: r = q05;
            5'b 00110: r = q06;
            5'b 00111: r = q07;
            5'b 01000: r = q08;
            5'b 01001: r = q09;
            5'b 01010: r = q10;
            5'b 01011: r = q11;
            5'b 01100: r = q12;
            5'b 01101: r = q13;
            5'b 01110: r = q14;
            5'b 01111: r = q15;
            5'b 10000: r = q16;
            5'b 10001: r = q17;
            5'b 10010: r = q18;
            5'b 10011: r = q19;
            5'b 10100: r = q20;
            5'b 10101: r = q21;
            5'b 10110: r = q22;
            5'b 10111: r = q23;
            5'b 11000: r = q24;
            5'b 11001: r = q25;
            5'b 11010: r = q26;
            5'b 11011: r = q27;
            5'b 11100: r = q28;
            5'b 11101: r = q29;
            5'b 11110: r = q30;
            5'b 11111: r = q31;
  
            default: r = 32'b00000000000000000000000000000000;
        endcase
        
    end
endmodule
