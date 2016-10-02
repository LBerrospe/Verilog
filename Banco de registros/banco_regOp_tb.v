`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2016 11:48:31
// Design Name: 
// Module Name: banco_regOp_tb
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


module banco_regOp_tb;

    reg [7:0] X,Y;
    reg C;
    ////Direccion
    reg [2:0] w_addr;
    reg en_addr;
    //Entradas a los registros
    reg reset,clk;
    //Salida de multiplexor
    reg [2:0] SEL;
    wire [15:0] R;

    banco_regOp ban_regop(
    .X(X), .Y(Y),
    .C(C),
    .w_addr(w_addr),
    .en_addr(en_addr),
    .reset(reset) ,.clk(clk),
    .SEL(SEL),
    .R(R)
    );
    
    always 
        begin
            #40;
            clk = !clk;
        end
        
        
    initial
        begin
            //Inicializa el reloj para que entre al ciclo always
            clk = 0;
            //Modulo de operaciones 0 - 100
            X = 8'b00001111;
            Y = 8'b11110000;
            C = 1'b1;
            //Decodificador 0 - 100
            w_addr = 3'b101;
            en_addr = 1'b1;
            //Reset de registros 0 - 100
            reset = 1'b1;
            //SEL del multiplexor 0 - 100
            SEL = 3'b101;
            #100;
            
            //Modulo de operaciones 100 - 200
            C = 1'b1;
            //Decodificador 100 - 200
            w_addr = 3'b100;
            en_addr = 1'b1;
            //Reset de registros 100 - 200
            reset = 1'b0;
            //SEL del multiplexor 100 - 200
            SEL = 3'b001;
            #100;
            
            //Modulo de operaciones 200 - 300
            C = 1'b0;
            //Decodificador 200 - 300
            w_addr = 3'b010;
            en_addr = 1'b0;
            //Reset de registros 200 - 300
            reset = 1'b0;
            //SEL del multiplexor 200 - 300
            SEL = 3'b010;
            #100;
            
            //Modulo de operaciones 300 - 400
            X = 8'b11110000;
            Y = 8'b01010101;
            C = 1'b0;
            //Modulo decodificador 300 - 400
            w_addr = 3'b010;
            en_addr = 1'b1;
            //Reset de registros 300 - 400
            reset = 1'b0;
            //SEL del multiplexor 300 - 400
            SEL = 3'b010;
            #100;
            
            //Modulo de operaciones 400 - 500
            C = 1'b0;
            //Modulo decodificador 400 - 500
            w_addr = 3'b011;
            en_addr = 1'b0;
            //Reset de registros 400 - 500
            reset = 1'b0;
            //SEL del multiplexor 400 - 500
            SEL = 3'b010;
            #100;
            
            
            
            
            
        $stop;
    end
endmodule
