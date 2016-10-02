`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2016 19:12:31
// Design Name: 
// Module Name: ALU_RAM_TB
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


module ALU_RAM_TB;

    reg clk;
    wire ZF;
    wire [31:0] s_RAM;
    
    ALU_RAM tb(
    .clk(clk),
    .ZF(ZF),
    .s_RAM(s_RAM)

    );
    
    
    always 
        begin
            #4;
            clk = !clk;
        end
    
    initial
        begin
            clk = 0;       
            #900;                             
        $stop;
      end
endmodule
