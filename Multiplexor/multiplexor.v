`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2016 13:08:40
// Design Name: 
// Module Name: multiplexor
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

//--------------------------Modulo multiplexor--------------------------
module multiplexor(
//---------I/O multiplexor---------
    input [15:0] resop00, resop01, resop02, 
    input [15:0] resop03, resop04, resop05,
    input [2:0] SEL,
    output reg [15:0] R,
    output reg en
    );
//Declaraciones de señales internas 
//NA
    //Cuerpo del modulo
    always @*
    begin
        case(SEL)
            3'b000 : 
                begin
                    R =   resop00;
                    en = 1'b0;
                end //end 3'b000
            3'b001 : 
                begin
                    R = resop01;
                    en = 1'b1;
                end //end 3'b001
            3'b010 :
                begin
                R = resop02;
                en = 1'b0;
                end //end 3'b010
            3'b011 :
                begin
                    R = resop03;
                    en = 1'b1;
                end //end 3'b011
            3'b100 :
                begin
                    R = resop04;
                    en = 1'b1;
                end //end 3'b100
            3'b101 : 
                begin
                    R = resop05;
                    en = 1'b0;
                end //end 3'b101
                
            default: R = 0;
        endcase // end case
    end//end always
    
endmodule