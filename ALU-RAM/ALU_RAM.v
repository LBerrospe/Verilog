`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2016 16:37:59
// Design Name: 
// Module Name: ALU-RAM
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


module ALU_RAM(
    //I/O
    input clk,
    output ZF,
    output [31:0] s_RAM
    );
    //Se;ales internas
    wire CP,en_ROM,w_en,r_en;
    wire [3:0] sel_op,addr_r,addr_w,addr_ROM;
    wire [31:0] d_ROMaUC,d_ROM1aALU,d_ROM2aALU,s_ALUaRAM;
    
    //Cuerpo del modulo
    UC unidadcontrol(
       .clk(clk),
       .d_ROM(d_ROMaUC),
       .w_en(w_en), .r_en(r_en), .CP(CP),
       .sel_op(sel_op),.addr_w(addr_w),.addr_r(addr_r)
    );      
    
    CONT cont(
	   .CP(CP),
       .en_ROM(en_ROM),
       .s_addr_ROM(addr_ROM)
    );  
        
    ALU alu(
    	.d_ROM1(d_ROM1aALU), .d_ROM2(d_ROM2aALU),
        .sel_op(sel_op),
        .s_ALU(s_ALUaRAM),
        .ZF(ZF)
    );
    
    RAM ram(
	   .clk(clk), .w_en(w_en), .r_en(r_en),
        .addr_r(addr_r), .addr_w(addr_w),
        .s_ALU(s_ALUaRAM),
        .s_RAM(s_RAM)
    );
    
    ROM_I rom(
        .addr_ROM(addr_ROM),
        .d(d_ROMaUC)
    );
    
    ROM_OP1 rom1(
        .en_ROM(en_ROM),
        .addr_ROM(addr_ROM),
        .d(d_ROM1aALU)
    );
    
    ROM_OP2 rom2(
        .en_ROM(en_ROM),
        .addr_ROM(addr_ROM),
        .d(d_ROM2aALU)
    );
     
endmodule
