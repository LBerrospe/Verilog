`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas
// 
// Create Date: 13.05.2016 17:06:07
// Design Name: Main_control_unit
// Module Name: Main_control_unit
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


module Main_control_unit(
        input clk,
        input [5:0] IN,
        output reg RegWrite,RegDest,CP,
        output reg [1:0] ALUcontrol,
        output reg ALUsrc,
        output reg ReadEn,WriteEn,
        output reg MemtoReg
    );
    
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6 = 6;
    reg auxCP = 0;
    reg [4:0] currentState = S5;
    reg [4:0] nextState;

    
    always@(currentState)
    begin
        case(currentState)
            S0:
            begin
                case(IN)
                    6'b000000: nextState = S1; //R Type Instruction
                    6'b000010: nextState = S2; //I Type Instruction
                endcase
            end
            
            S1: //Executing R Type Instruction
            begin
                RegWrite <= 1'b1;
                RegDest <= 1'b1;
                ALUsrc <= 1'b0;
                MemtoReg <= 1'b1;
                ALUcontrol <= 2'b10;
                nextState <= S3;
            end
            
            S2: //Executing an I Type Instruction
            begin
                RegWrite <= 1'b1;
                RegDest <= 1'b0;
                ALUsrc <= 1'b1;
                MemtoReg <= 1'b0;
                ReadEn <= 1'b1;
                nextState <= S5;
            end
            
            S3:
            begin
                nextState <= S4;
            end
            
            S4:
            begin
                nextState <= S5;
            end
            
            S5:
            begin
                nextState <= S6;
            end

            S6:
            begin
                auxCP <= ~auxCP;
                CP <= auxCP;
                ReadEn <= 0;
                WriteEn <= 0;
                ALUcontrol <= 2'b11;
                RegWrite <= 0;
                RegDest <= 0;
                ALUsrc <= 0;
                MemtoReg <= 0;
                nextState <= S0;
            end            
        endcase
    end
    
    always@(posedge clk)
    begin
        currentState <= nextState;
    end
endmodule
