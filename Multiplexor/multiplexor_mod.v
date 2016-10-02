`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2016 14:46:16
// Design Name: 
// Module Name: multiplexor_mod
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

//--------------------------Modulo multiplexor_mod--------------------------
module multiplexor_mod(
//---------I/O multiplexor_mod---------
    input [7:0] A,B,C,D,
    input [2:0] SEL,
    output [15:0] R,
    output en
    );
//Declaraciones de señales internas 
wire [15:0] resop00, resop01, resop02; 
wire [15:0] resop03, resop04, resop05;
        //Cuerpo del modulo
        
        operacion00 op0(
            .A(A), .B(B), .C(C),
            .resop00(resop00)
            );//FIN operacion op0
        
        operacion01 op01(
            .D(D),
            .resop01(resop01)
            );//FIN operacion op01
        
        operacion02 op02(
            .A(A), .C(C),
            .resop02(resop02)
            );//FIN operacion op02  
        
        operacion03 op03(
            .D(D),
            .resop03(resop03)
            );//FIN operacion  op03
        
        operacion04 op04(
            .C(C),
            .resop04(resop04)
            );//FIN operacion op04
        
        operacion05 op05(
            .B(B), .C(C),
            .resop05(resop05)
            );//FIN operacion op05    
        
        multiplexor multi(
            .resop00(resop00), .resop01(resop01), .resop02(resop02), .resop03(resop03), .resop04(resop04), .resop05(resop05),
            .SEL(SEL),
            .R(R),
            .en(en)
            );   
endmodule

