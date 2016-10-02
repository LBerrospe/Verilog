`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2016 15:50:30
// Design Name: 
// Module Name: multiplexor_mod_tb
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

//---------I/O multiplexor_mod_tb---------
module multiplexor_mod_tb;
//---------I/O multiplexor_mod_tb---------
//N/A
//Declaraciones de señales internas
reg [7:0] A,B,C,D;
reg [2:0] SEL;
wire [15:0] R;
wire en;
//Cuerpo del modulo
    multiplexor_mod mul_mod(
        .A(A), .B(B), .C(C), .D(D),
        .SEL(SEL),
        .R(R),
        .en(en)
        ); //FIN multiplexor_mod
        
        initial
            begin
                A = 8'b10101010;    //170
                B = 8'b00000001;    //1
                C = 8'b10000000;    //128
                D = 8'b11000000;    //192
                SEL = 3'b000;
                #100;

                SEL = 3'b001;
                #100;
               
                SEL = 3'b010;
                #100;
                
                SEL = 3'b011;
                #100;
                
                SEL = 3'b100;
                #100;
                
                A = 8'b11111111;
                B = 8'b10101010;
                C = 8'b00000001;
                D = 8'b10000000;
                SEL = 3'b101;
                #100;
                
                SEL = 3'b111;
                #100;
                
            $stop;
        end // FIN testbench
endmodule
