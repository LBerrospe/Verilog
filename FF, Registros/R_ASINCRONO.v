`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2016 15:01:51
// Design Name: 
// Module Name: FF-D_ASINCRONO
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


module R_ASINCRONO(
//---------I/O---------
    input [7:0] d,
    input reset,clk,
    output reg [7:0] q
    );
//Declaracion de se�ales internas

//Cuerpo del modulo
    always@(reset)
        begin
            if(reset == 1'b1)
                q = 0;
        end //always
    
    always@(posedge clk)
        begin
            if(reset == 1'b0)
                q = d;
        end //end always
   
endmodule
