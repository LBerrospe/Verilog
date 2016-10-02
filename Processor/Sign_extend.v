`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas
// 
// Create Date: 13.05.2016 17:08:21
// Design Name: Sign_extend
// Module Name: Sign_extend
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


module Sign_extend(
        input [15:0] extend,
        output reg [31:0] extended
    );
    
    always@*
    begin 
        extended[15:0]  = extend[15:0];
        extended[31:16] = {16{extend[15]}} ;
    end
endmodule
