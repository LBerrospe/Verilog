`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Gualadajara
// Engineer: Hector Eduardo Berrospe Barajas 
// 
// Create Date: 13.05.2016 17:10:49
// Design Name: Registers
// Module Name: Registers
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


module Registers(
    input RegWrite,clk,reset,
    input [4:0] RR1, RR2, WR,
    input [31:0] DW,
    output [31:0] DR1, DR2
    );
    wire  [31:0] q00, q01, q02, q03, q04, q05, q06, q07, q08, q09;
    wire  [31:0] q10, q11, q12, q13, q14, q15, q16, q17, q18, q19;
    wire  [31:0] q20, q21, q22, q23, q24, q25, q26, q27, q28, q29;
    wire  [31:0] q30, q31;
    wire  [31:0] out;
  
    Register Reg00(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[0]),
        .q(q00)
    );
    
    Register Reg01(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[1]),
        .q(q01)
    );
    
    Register Reg02(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[2]),
        .q(q02)
    );
    
    Register Reg03(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[3]),
        .q(q03)
    );
    
    Register Reg04(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[4]),
        .q(q04)
    );
    
    Register Reg05(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[5]),
        .q(q05)
    );
    
    Register Reg06(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[6]),
        .q(q06)
    );
    
    Register Reg07(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[7]),
        .q(q07)
    );

    Register Reg08(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[8]),
        .q(q08)
    );
    
    Register Reg09(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[9]),
        .q(q09)
    );
    
    Register Reg10(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[10]),
        .q(q10)
    );
    
    Register Reg11(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[11]),
        .q(q11)
    );
    
    Register Reg12(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[12]),
        .q(q12)
    );
    
    Register Reg13(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[13]),
        .q(q13)
    );
    
    Register Reg14(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[14]),
        .q(q14)
    );
    
    Register Reg15(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[15]),
        .q(q15)
    );
    
    Register Reg16(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[16]),
        .q(q16)
    );
    
    Register Reg17(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[17]),
        .q(q17)
    );

    Register Reg18(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[18]),
        .q(q18)
    );
    
    Register Reg19(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[19]),
        .q(q19)
    );                   
    
    Register Reg20(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[20]),
        .q(q20)
    );
    
    Register Reg21(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[21]),
        .q(q21)
    );
    
    Register Reg22(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[22]),
        .q(q22)
    );
    
    Register Reg23(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[23]),
        .q(q23)
    );
    
    Register Reg24(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[24]),
        .q(q24)
    );
    
    Register Reg25(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[25]),
        .q(q25)
    );
    
    Register Reg26(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[26]),
        .q(q26)
    );
    
    Register Reg27(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[27]),
        .q(q27)
    );

    Register Reg28(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[28]),
        .q(q28)
    );
    
    Register Reg29(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[29]),
        .q(q29)
    );   
    
    Register Reg30(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[30]),
        .q(q30)
    );
    
    Register Reg31(
        .d(DW),
        .reset(reset), .clk(clk), .en(out[31]),
        .q(q31)
    );      
    
    
    Decoder Dec(
            .w_addr(WR),
            .en_addr(RegWrite),
            .out(out) 
        );          
    
    Mux_R MuxR1(
            .sel(RR1),
            .q00(q00), .q01(q01), .q02(q02), .q03(q03), .q04(q04), .q05(q05), .q06(q06), .q07(q07), .q08(q08), .q09(q09),
            .q10(q10), .q11(q11), .q12(q12), .q13(q13), .q14(q14), .q15(q15), .q16(q16), .q17(q17), .q18(q18), .q19(q19),
            .q20(q20), .q21(q21), .q22(q22), .q23(q23), .q24(q24), .q25(q25), .q26(q26), .q27(q27), .q28(q28), .q29(q29),
            .q30(q30), .q31(q31),
            .r(DR1)   
        ); 


    Mux_R MuxR2(
            .sel(RR2),
            .q00(q00), .q01(q01), .q02(q02), .q03(q03), .q04(q04), .q05(q05), .q06(q06), .q07(q07), .q08(q08), .q09(q09),
            .q10(q10), .q11(q11), .q12(q12), .q13(q13), .q14(q14), .q15(q15), .q16(q16), .q17(q17), .q18(q18), .q19(q19),
            .q20(q20), .q21(q21), .q22(q22), .q23(q23), .q24(q24), .q25(q25), .q26(q26), .q27(q27), .q28(q28), .q29(q29),
            .q30(q30), .q31(q31),
            .r(DR2)   
        );                      
endmodule
