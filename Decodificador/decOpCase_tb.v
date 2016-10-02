`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Guadalajara 
// Engineer: Berrospe Barajas Hector Eduardo
// 
// Create Date: 05.03.2016 14:40:27
// Design Name: decodificador 2-4 condicional CASE.
// Module Name: decOpCase_tb
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


module decOpCase_tb;

    reg [3:0] A_TB,B_TB;
    reg [1:0] DEC_TB;
    reg ENABLE_TB;
    wire [7:0] op0_TB,op1_TB,op2_TB,op3_TB;
    
    decOpCase decopCase_tb(
    .A(A_TB), .B(B_TB), 
    .DEC(DEC_TB), 
    .ENABLE(ENABLE_TB),
    .op0(op0_TB), .op1(op1_TB), .op2(op2_TB), .op3(op3_TB)
    );
    
    initial
    begin
ENABLE_TB = 1'b1;       //ENABLE = 1

DEC_TB = 2'b00;         //Ejecuta la operacion 1
    
    A_TB = 4'b0000;
        B_TB = 4'b0000;
        #100;
        
    A_TB = 4'b0001;
        B_TB = 4'b0001;
        #100;
            
DEC_TB = 2'b01;         //Ejecuta la operacion 2
        
    A_TB = 4'b0010;
        B_TB = 4'b0010;
        #100;
 
DEC_TB = 2'b10;         //Ejecuta la operacion 3
                    
    A_TB = 4'b0011;
        B_TB = 4'b0011;
        #100;
            
    A_TB = 4'b0100;
        B_TB = 4'b0100;
        #100; 
     
DEC_TB = 2'b11;         //Ejecuta la operacion 4    
   
    A_TB = 4'b0111;
        B_TB = 4'b0111;
        #100;
    
ENABLE_TB = 1'b0;           //ENABLE = 0, no permite realizar ninguna operacion
                        
DEC_TB = 2'b00;         
     
     A_TB = 4'b0000;
        B_TB = 4'b0000;
        #100;
         
     A_TB = 4'b0001;
        B_TB = 4'b0001;
        #100;
             
 DEC_TB = 2'b01;    
         
     A_TB = 4'b0010;
        B_TB = 4'b0010;
        #100;
  
 DEC_TB = 2'b10;
                     
     A_TB = 4'b0011;
        B_TB = 4'b0011;
        #100;
             
     A_TB = 4'b0100;
        B_TB = 4'b0100;
        #100; 
        
 DEC_TB = 2'b11;    
    
     A_TB = 4'b0111;
        B_TB = 4'b0111;
        #100;
   
    $stop;
    end
    
endmodule