`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2016 11:30:21
// Design Name: 
// Module Name: FFD_SINCRONO
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


module FFD_SINCRONO(
//---------I/O---------
    input d,reset,clk,en,
    output reg q
    );
//Declaracion de señales internas

    //Cuerpo del modulo
    
     always@(reset)
           begin
               if(reset == 1'b1)
                   q = 0;
           end //always
       
       always@(posedge clk)
        begin
            case(en)
                1'b1 :
                    if(reset == 1'b0)
                        q = d;     
            endcase 
           end //end always

endmodule
