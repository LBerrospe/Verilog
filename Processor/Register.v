`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas
// 
// Create Date: 13.05.2016 17:12:20
// Design Name: Register
// Module Name: Register
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

module Register(
//---------I/O---------
    input [31:0] d,
    input reset,clk,en,
    output reg [31:0] q
    );

    //Body
    always@(posedge reset or posedge clk)
    begin//Begin always
        if(reset == 1'b1)
            q <= 32'b00000000000000000000000000000000;
        else
        begin//begin else
            if(en == 1'b1)
                q <= d;
        end//end else    
    end//End always
endmodule