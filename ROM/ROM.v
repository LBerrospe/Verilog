`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2016 15:50:47
// Design Name: 
// Module Name: ROM
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


module ROM(
    input clk,
    input [5:0] addr,
    output reg [7:0] d
    );
    
    always@(posedge clk)
    begin
        case(addr)
            //Codigo de alumno
            6'b000000 : d <=  8'b00110010; //[2] Codigo ASCII
            6'b000001 : d <=  8'b00110001; //[1] Codigo ASCII
            6'b000010 : d <=  8'b00110000; //[0] Codigo ASCII
            6'b000011 : d <=  8'b00110001; //[1] Codigo ASCII
            6'b000100 : d <=  8'b00110110; //[6] Codigo ASCII
            6'b000101 : d <=  8'b00111000; //[8] Codigo ASCII
            6'b000110 : d <=  8'b00110100; //[4] Codigo ASCII
            6'b000111 : d <=  8'b00110101; //[5] Codigo ASCII
            6'b001000 : d <=  8'b00110111; //[7] Codigo ASCII
            //Nombres
            6'b001001 : d <=  8'b01001000; //[H] Codigo ASCII
            6'b001010 : d <=  8'b01000101; //[E] Codigo ASCII
            6'b001011 : d <=  8'b01000011; //[C] Codigo ASCII
            6'b001100 : d <=  8'b01010100; //[T] Codigo ASCII
            6'b001101 : d <=  8'b01001111; //[O] Codigo ASCII
            6'b001110 : d <=  8'b01010010; //[R] Codigo ASCII
            
            6'b001111 : d <=  8'b01000101; //[E] Codigo ASCII
            6'b010000 : d <=  8'b01000100; //[D] Codigo ASCII
            6'b010001 : d <=  8'b01010101; //[U] Codigo ASCII
            6'b010010 : d <=  8'b01000001; //[A] Codigo ASCII
            6'b010011 : d <=  8'b01010010; //[R] Codigo ASCII
            6'b010100 : d <=  8'b01000100; //[D] Codigo ASCII
            6'b010101 : d <=  8'b01001111; //[O] Codigo ASCII
            //Apellidos
            6'b011101 : d <=  8'b01000010; //[B] Codigo ASCII
            6'b011110 : d <=  8'b01000101; //[E] Codigo ASCII
            6'b011111 : d <=  8'b01010010; //[R] Codigo ASCII
            6'b100000 : d <=  8'b01010010; //[R] Codigo ASCII
            6'b100001 : d <=  8'b01001111; //[O] Codigo ASCII
            6'b100010 : d <=  8'b01010011; //[S] Codigo ASCII
            6'b100011 : d <=  8'b01010000; //[P] Codigo ASCII
            6'b100100 : d <=  8'b01000101; //[E] Codigo ASCII
            
            6'b100101 : d <=  8'b01000010; //[B] Codigo ASCII
            6'b100110 : d <=  8'b01000001; //[A] Codigo ASCII
            6'b100111 : d <=  8'b01010010; //[R] Codigo ASCII
            6'b101000 : d <=  8'b01000001; //[A] Codigo ASCII
            6'b101001 : d <=  8'b01001010; //[J] Codigo ASCII
            6'b101010 : d <=  8'b01000001; //[A] Codigo ASCII
            6'b101011 : d <=  8'b01010011; //[S] Codigo ASCII
            //Caracter espacio " "
            6'b101111 : d <=  8'b00100000; //[ ] Codigo ASCII
            
            default : d <= 8'bzzzzzzzz;
        endcase
             
    end
endmodule
