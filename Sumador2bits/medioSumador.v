`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2016 19:27:29
// Design Name: 
// Module Name: medioSumador
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


module medioSumador(
    input i0,i1,
    output resAND,resXOR
    );
    
   assign resXOR = i0 ^ i1; 
   assign resAND = i0 & i1;
   
    
endmodule
