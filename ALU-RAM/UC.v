`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2016 12:54:38
// Design Name: 
// Module Name: unidaddeControl
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

module UC(
	input clk,
	input [31:0] d_ROM,
	output reg w_en,r_en,CP,
	output reg [3:0] sel_op,addr_w,addr_r
);
    reg auxCP = 0;
	localparam S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4;	//Estados
    reg [2:0] Edo_act = S3;
    reg [2:0] Edo_sig;
    reg [2:0] aux_addr_wArit = 3'b111;
    reg [2:0] aux_addr_wLogic = 3'b111;
    
    reg [2:0] aux_addr_rArit = 3'b111;
    reg [2:0] aux_addr_rLogic = 3'b111;
    
    always@(d_ROM)
    begin
        sel_op = d_ROM[3:0];   
    end
    
    always@(posedge clk)
    begin
        case(Edo_act)
            S0:
            begin
                if(d_ROM >= 4'b0100 && d_ROM <= 4'b0111) //Arith
                begin
                    aux_addr_wArit = aux_addr_wArit + 1;
                    addr_w[3:0] <= aux_addr_wArit + 8; 
                    
                     w_en <= 1'b1;
                     r_en <= 1'b0;
                    
                    Edo_sig = S3;
                end
                else if(d_ROM >= 4'b1000 && d_ROM <= 4'b1101) //Logic
                begin 
                    aux_addr_wLogic = aux_addr_wLogic + 1;
                    addr_w[3] <= 1'b0;
                    addr_w[2:0] <= aux_addr_wLogic;    
                    
                     w_en <= 1'b1;
                     r_en <= 1'b0;
                    
                    Edo_sig <= S3;                
                end
                
                else if(d_ROM == 4'b0000)    //Leer arith
                begin             
                    aux_addr_rArit = aux_addr_rArit + 1;
                    addr_r <= aux_addr_rArit + 8;
        
                    w_en <= 1'b0;
                    r_en <= 1'b1;
                    Edo_sig <= 1;                
                end
                else if(d_ROM == 4'b0001)    //Leer logic
                begin
                    aux_addr_rLogic = aux_addr_rLogic + 1;
                    addr_r[3] <= 1'b0;
                    addr_r[2:0] <= aux_addr_rLogic;   
                    
                    w_en <= 1'b0;
                    r_en <= 1'b1;
                                        
                    Edo_sig <= 2;
                end
                else                
                    Edo_sig <= S3;
                   
            end//S0
            
            S1:
            begin
                if(aux_addr_rArit == 3'b111) 
                    Edo_sig = S3;
                else
                    Edo_sig = S0;
            end //FIN estado 2
            
            S2:
            begin        
                if(aux_addr_rLogic == 3'b111) 
                    Edo_sig = S3;
                else
                    Edo_sig = S0;
            end //FIN estado 2                 

            S3:
            begin
                auxCP <= ~auxCP;
                CP <= auxCP;
                w_en <= 1'b0;
                r_en <= 1'b0;
                Edo_sig = S0;                
            end            
        endcase//Edo_act
    end// end always
    
	always@(posedge clk)
    begin
       Edo_act <= Edo_sig;   
    end

endmodule
