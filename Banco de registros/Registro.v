`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2016 22:54:30
// Design Name: 
// Module Name: Registro
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


module Registro(
//---------I/O---------
    input [15:0] d,
    input reset,clk,en,
    output reg [15:0] q
    );
//Declaracion de señales internas

    //Cuerpo del modulo
    always@(posedge reset or posedge clk)
    begin//Begin always
        if(reset == 1'b1)
            q <= 16'b0000000000000000;
        else
            begin//begin else
                if(en == 1'b1)
                    q <= d;
        end//end else    
    end//End always
endmodule
