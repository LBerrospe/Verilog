`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas 
// 
// Create Date: 13.05.2016 17:07:39
// Design Name: ALU_control_unit
// Module Name: ALU_control_unit
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


module ALU_control_unit(
        input clk,
        input [1:0] ALUcontrol,
        input [5:0] IN,
        output reg [3:0] sel_op 
    );
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4;
    reg [2:0] currentState = 0;
    reg [2:0] nextState = 4;

    
    always@(currentState)
    begin
        case(currentState)
            S0:
            begin
                case(ALUcontrol)
                    2'b00:  nextState = S1; //Cause ALU to add
                    2'b01:  nextState = S2; //Cause ALU to subtract
                    2'b10:  nextState = S3; //Use the instruction's function code;
                    default: nextState = S4;
                endcase
            end
            
            S1:      //Cause ALU to add
            begin
                sel_op = 4'b0100;
                nextState = S4;
            end
            
            S2:     //Cause ALU to subtract
            begin
                sel_op = 4'b0101;
                nextState = S4;
            end
            
            S3:     //Use the instruction's function code;
            begin
                sel_op = IN[3:0];
                nextState = S4;
            end

            S4:     //Use the instruction's function code;
            begin
                nextState = S0;
            end            
        endcase
    end//End always
    
    always@(posedge clk)
    begin
        currentState <= nextState;
    end//END always
endmodule
