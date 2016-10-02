`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Guadalajara
// Engineer: Hector Eduardo Berrospe Barajas
// 
// Create Date: 15.05.2016 22:30:11
// Design Name: Processor_TB
// Module Name: Processor_TB
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


module Processor_TB;

    reg clk,reset;
    wire ZF;
    
    Processor processor(
            .clk(clk), .reset(reset),
            .ZF(ZF)
        );

    always 
        begin
            #5;
            clk = !clk;
        end
        
        
    initial
        begin
            reset = 1;
            #5;
            reset = 0;
            clk = 0;       
            #700;                             
        $stop;
    end

endmodule
