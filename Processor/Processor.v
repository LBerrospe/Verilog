`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas
// 
// Create Date: 14.05.2016 18:43:24
// Design Name: Processor
// Module Name: Processor
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


module Processor(
        input clk,reset,
        output ZF
    );
    
    wire RegDest,RegWrite,ALUsrc,WE,RE,MemtoReg,CP;
    wire [1:0] ALUcontrol;
    wire [4:0] wr;
    wire [3:0] sel_op,out_addr_ROM;
    wire [31:0] DR,DR1,DR2,EXT,OP2,res,resRAM,DW,d;
    
    Count count(
        .CP(CP),
        .out_addr_ROM(out_addr_ROM)
    );
    
    ROM_I rom_i(
        .addr_ROM(out_addr_ROM),
        .d(d)
    );
    
    Registers regs(
        .RegWrite(RegWrite), .clk(clk), .reset(reset),
        .RR1(d[25:21]), .RR2(d[20:16]), .WR(wr),
        .DW(DW),
        .DR1(DR1), .DR2(DR2)
    );
    
    ALU alu(
        .op1(DR1), .op2(OP2),
        .sel_op(sel_op),
        .res(res),
        .ZF(ZF)
    );
    
    ALU_control_unit alu_cu(
        .clk(clk),
        .ALUcontrol(ALUcontrol),
        .IN(d[5:0]),
        .sel_op(sel_op)
    );
    
    Main_control_unit main_cu(
        .clk(clk), .CP(CP),
        .IN(d[31:26]),
        .RegWrite(RegWrite), .RegDest(RegDest),
        .ALUcontrol(ALUcontrol),
        .ALUsrc(ALUsrc),
        .ReadEn(RE), .WriteEn(WE),
        .MemtoReg(MemtoReg)
    );
    
    Mux mux32b(
        .sel(ALUsrc),
        .a(DR2), .b(EXT),
        .m(OP2)
    );
    
    Mux mux32b_2(
        .sel(MemtoReg),
        .a(resRAM), .b(res),
        .m(DW)
    );
    
    Mux_5b mux5b(
        .RegDest(RegDest),
        .a(d[20:16]), .b(d[15:11]),
        .wr(wr)
    );
    
    RAM ram(
        .w_en(WE), .r_en(RE), .clk(clk),
        .addr(res), .Dato(DR2),
        .resRAM(resRAM) 
        
    );
    
    Sign_extend sign_extend(
        .extend(d[15:0]),
        .extended(EXT)
    );
endmodule
