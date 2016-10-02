`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas 
// 
// Create Date: 13.05.2016 17:08:02
// Design Name: ALU
// Module Name: ALU
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


module ALU(
	   input [31:0] op1,op2,
	   input [3:0] sel_op,
	   output reg [31:0] res,
	   output reg ZF
    );
    
	always@(op1 or op2 or sel_op)
	begin
		case(sel_op)
		    4'b0000: res =   op1 & op2;
		    4'b0001: res =   op1 | op2;
			4'b0010: res =   op1 + op2;
			4'b0110: res =   op1 - op2;
		//	4'b0111: res =   set on less than
			4'b1100: res =   ~(op1 | op2);

		endcase//END sel_op
		
		if(res == 32'b00000000000000000000000000000000)
		  ZF = 1'b1;
		else
		  ZF = 1'b0;
	end//END always@
endmodule

