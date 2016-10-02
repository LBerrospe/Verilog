`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UDG CUCEI
// Engineer: Berrospe Barajas Hector Eduardo
// 
// Create Date: 
// Design Name: Banco_registros
// Module Name: Banco_registros
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
    input [15:0] q0, q1, q2, 
    input [15:0] q3, q4, q5,
	input [15:0] q6, q7,
    input [2:0] SEL,
    output reg [15:0] R
    );
//Declaraciones de señales internas 
//NA
    //Cuerpo del modulo
    always @*
    begin
        case(SEL)
            3'b000 : R = q0;                    
            3'b001 : R = q1;
            3'b010 : R = q2;
            3'b011 : R = q3;                    
            3'b100 : R = q4;                                    
            3'b101 : R = q5;                                   
			3'b110 : R = q6;                    
			3'b111 : R = q7;                          				
            default: R = 16'b0000000000000000;                    

        endcase // end case
    end//end always
    
endmodule