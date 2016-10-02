`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2016 13:17:53
// Design Name: 
// Module Name: FFD_REG
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


module FFD_R(
    input clk,
    
    input d_FFD,
    
    input reset_FFD_ASINCRONO,
    output  q_FFD_ASINCRONO,

    input reset_FFD_SINCRONO,en_FFD_SINCRONO,//clk_FFD_SINCRONO
    output q_FFD_SINCRONO,

    input [7:0] d_R,
    
    input reset_R_ASINCRONO,//clk_R_ASINCRONO
    output  [7:0] q_R_ASINCRONO,

    input reset_R_SINCRONO,en_R_SINCRONO,//clk_R_SINCRONO
    output [7:0] q_R_SINCRONO

);


//Instancia de fllip flop tipo D ASINCRONO
FFD_ASINCRONO FF_D_A(
    .d(d_FFD), .reset(reset_FFD_ASINCRONO), .clk(clk),
    .q(q_FFD_ASINCRONO)
);
//Instancia de fllip flop tipo D SINCRONO
FFD_SINCRONO FFD_S(
    .d(d_FFD), .reset(reset_FFD_SINCRONO), .clk(clk), .en(en_FFD_SINCRONO),
    .q(q_FFD_SINCRONO)
);

//Instancia de registro ASINCRONO
R_ASINCRONO R_A(
    .d(d_R), .reset(reset_R_ASINCRONO), .clk(clk),
    .q(q_R_ASINCRONO) 
);
//Instancia de registro SINCRONO
R_SINCRONO R_S(
    .d(d_R), .reset(reset_R_SINCRONO), .clk(clk), .en(en_R_SINCRONO),
    .q(q_R_SINCRONO)
);

endmodule
