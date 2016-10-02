`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2016 12:39:08
// Design Name: 
// Module Name: operacion
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

//--------------------------Modulo operacion 0--------------------------
module operacion00(
//---------I/O Operacion 0---------
    input [7:0] A,B,C,
    output [15:0] resop00
    );
//Declaraciones de señales internas 
//NA
    //Cuerpo del modulo
    assign resop00 = A + B - C;
endmodule

//--------------------------Modulo operacion 01--------------------------
module operacion01(
//---------I/O Operacion 01---------
    input [7:0] D,
    output [15:0] resop01
    );
//Declaraciones de señales internas 
//NA
    //Cuerpo del modulo
    assign resop01 = D<<2;
endmodule

//--------------------------Modulo operacion 02--------------------------
module operacion02(
//---------I/O Operacion 02---------
    input [7:0] A,C,
    output [15:0] resop02
    );
//Declaraciones de señales internas 
//NA
    //Cuerpo del modulo
    assign resop02 = A * C - C;
endmodule

//--------------------------Modulo operacion 03--------------------------
module operacion03(
//---------I/O Operacion 03---------
    input [7:0] D,
    output [15:0] resop03
    );
//Declaraciones de señales internas 
//NA
    //Cuerpo del modulo
    assign resop03 = D * D;
endmodule

//--------------------------Modulo operacion 04--------------------------
module operacion04(
//---------I/O Operacion 04---------
    input [7:0] C,
    output [15:0] resop04
    );
//Declaraciones de señales internas 
//NA
    //Cuerpo del modulo
    assign resop04 = C % 2;
endmodule

//--------------------------Modulo operacion 05--------------------------
module operacion05(
//---------I/O Operacion 05---------
    input [7:0] B,C,
    output [15:0] resop05
    );
//Declaraciones de señales internas 
//NA
    // Cuerpo del modulo
    assign resop05 = B + C;
endmodule