`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2016 23:48:40
// Design Name: 
// Module Name: Registro_8
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


module Registro_conjunto(
//---------I/O---------
    input [15:0] d,
    input reset,clk,
    input en0,en1,en2,en3,en4,en5,en6,en7,
    output [15:0] q0,q1,q2,q3,q4,q5,q6,q7
    );
    
    Registro r0(
        .d(d),
        .reset(reset), .clk(clk), .en(en0),
        .q(q0)
    );
    
    Registro r1(
        .d(d),
        .reset(reset), .clk(clk), .en(en1),
        .q(q1)
    );    
    
     Registro r2(
        .d(d),
        .reset(reset), .clk(clk), .en(en2),
        .q(q2)
    );
    
    Registro r3(
        .d(d),
        .reset(reset), .clk(clk), .en(en3),
        .q(q3)
    );
    
    Registro r4(
        .d(d),
        .reset(reset), .clk(clk), .en(en4),
        .q(q4)
    );
    
     Registro r5(
        .d(d),
        .reset(reset), .clk(clk), .en(en5),
        .q(q5)
    );

    Registro r6(
        .d(d),
        .reset(reset), .clk(clk), .en(en6),
        .q(q6)
    );
    
    Registro r7(
        .d(d),
        .reset(reset), .clk(clk), .en(en7),
        .q(q7)
    );      
      
endmodule
