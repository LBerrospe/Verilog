`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2016 22:45:19
// Design Name: 
// Module Name: banco_registro
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


module banco_registro(
//I/O 
    ////Direccion
    input [2:0] w_addr,
    input en_addr,
    //Entradas a los registros
    input [15:0] d,
    input reset,clk,
    //Salida de multiplexor
    input [2:0] SEL,
    output [15:0] R

    );
    wire [7:0] salida; // cable para el decodificador a registros
    
    wire [15:0] q0,q1,q2,q3,q4,q5,q6,q7; // cables para los registros al multiplexor
    
   
    decodificador dec(
    .w_addr(w_addr),
    .en_addr(en_addr),
    .salida(salida)
    );
    
    Registro_conjunto reg_con(
        .d(d),
        .reset(reset), .clk(clk), 
        .en0(salida[0]), .en1(salida[1]), .en2(salida[2]), .en3(salida[3]), 
        .en4(salida[4]), .en5(salida[5]), .en6(salida[6]), .en7(salida[7]),
        .q0(q0), .q1(q1), .q2(q2), .q3(q3), .q4(q4), .q5(q5), .q6(q6), .q7(q7)
    );
    
    multiplexor mul(
        .q0(q0), .q1(q1), .q2(q2), 
        .q3(q3), .q4(q4), .q5(q5),
        .q6(q6), .q7(q7),
        .SEL(SEL),
        .R(R)
    );
    
endmodule
