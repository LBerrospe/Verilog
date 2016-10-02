//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2016 10:04:01
// Design Name: 
// Module Name: FFs_Rs_TB
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


module FFD_REG_TB;
//FLIP FLP TIPO  D ASINCRONO
reg clk;
reg d_FFD;
//fllip flop tipo D ASINCRONO
reg reset_FFD_ASINCRONO;
wire  q_FFD_ASINCRONO;
//fllip flop tipo D SINCRONO
reg reset_FFD_SINCRONO;
reg en_FFD_SINCRONO;
wire  q_FFD_SINCRONO;
//registro 
reg [7:0] d_R;
//registro ASINCRONO
reg reset_R_ASINCRONO;
wire  [7:0] q_R_ASINCRONO;
//registro SINCRONO
reg reset_R_SINCRONO,en_R_SINCRONO;
wire  [7:0] q_R_SINCRONO;


FFD_R ffd_reg(

    .clk(clk),
    .d_FFD(d_FFD),
    
    .reset_FFD_ASINCRONO(reset_FFD_ASINCRONO),
    .q_FFD_ASINCRONO(q_FFD_ASINCRONO),

    .reset_FFD_SINCRONO(reset_FFD_SINCRONO),
    .en_FFD_SINCRONO(en_FFD_SINCRONO),
    .q_FFD_SINCRONO(q_FFD_SINCRONO),

    .d_R(d_R),
    
    .reset_R_ASINCRONO(reset_R_ASINCRONO),
    .q_R_ASINCRONO(q_R_ASINCRONO),

    .reset_R_SINCRONO(reset_R_SINCRONO),
    .en_R_SINCRONO(en_R_SINCRONO),
    .q_R_SINCRONO(q_R_SINCRONO)
);

always 
	begin
		#100
		clk = !clk;
	end
	
initial
    begin
        clk = 0;
        //////////////FLIP FLOP////////////
        d_FFD = 1'b1;
        //ASINCRONO
        reset_FFD_ASINCRONO = 1'b1;
        //SINCRONO
        reset_FFD_SINCRONO = 1'b1;
        en_FFD_SINCRONO = 1'b1;
        
        /////////////REGISTRO////////////
        d_R = 8'b10000001;
        //ASINCRONO
        reset_R_ASINCRONO = 1'b1;
        //SINCRONO
        reset_R_SINCRONO = 1'b1;
        en_R_SINCRONO = 1'b1;
#100;
        
        
        /////////////FLIP FLOP////////////
        reset_FFD_ASINCRONO = 1'b0;
        //SINCRONO
        reset_FFD_SINCRONO = 1'b0;
        en_FFD_SINCRONO = 1'b0;
        
        /////////////REGISTRO////////////
         //ASINCRONO
         reset_R_ASINCRONO = 1'b0;
         //SINCRONO
         reset_R_SINCRONO = 1'b0;
         en_R_SINCRONO = 1'b0;
#100;
         
         /////////////FLIP FLOP////////////
        reset_FFD_ASINCRONO = 1'b0;
        //SINCRONO
        reset_FFD_SINCRONO = 1'b0;  
        en_FFD_SINCRONO = 1'b1;
        
        /////////////REGISTRO////////////
        //ASINCRONO
        reset_R_ASINCRONO = 1'b0;
        //SINCRONO
        reset_R_SINCRONO = 1'b0;
        en_R_SINCRONO = 1'b1;
 #100;
         
        //ASINCRONO
        reset_FFD_ASINCRONO = 1'b1;
        //SINCRONO
        reset_FFD_SINCRONO = 1'b1;
        en_FFD_SINCRONO = 1'b1;
     
        /////////////REGISTRO////////////
        d_R = 8'b10000001;
        //ASINCRONO
        reset_R_ASINCRONO = 1'b1;
        //SINCRONO
        reset_R_SINCRONO = 1'b1;
        en_R_SINCRONO = 1'b1;
#100;
 
 
        /////////////FLIP FLOP////////////
        reset_FFD_ASINCRONO = 1'b0;
        //SINCRONO
        reset_FFD_SINCRONO = 1'b0;
        en_FFD_SINCRONO = 1'b0;
         
        /////////////REGISTRO////////////
        //ASINCRONO
        reset_R_ASINCRONO = 1'b0;
        //SINCRONO
        reset_R_SINCRONO = 1'b0;
        en_R_SINCRONO = 1'b0;
#100;
  
        /////////////FLIP FLOP////////////
        reset_FFD_ASINCRONO = 1'b0;
        //SINCRONO
        reset_FFD_SINCRONO = 1'b0;  
        en_FFD_SINCRONO = 1'b1;
         
        /////////////REGISTRO////////////
        //ASINCRONO
        reset_R_ASINCRONO = 1'b0;
        //SINCRONO
        reset_R_SINCRONO = 1'b0;
        en_R_SINCRONO = 1'b1;
#100;
    $stop;
end

endmodule
