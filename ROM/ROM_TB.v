`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2016 17:07:43
// Design Name: 
// Module Name: ROM_tb
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


module ROM_TB;

    reg clk;
    reg [5:0] addr;
    wire [7:0] d;

    ROM rom(
    .clk(clk),
    .addr(addr),
    .d(d)
    );
    
    always 
    begin
        #4;
        clk = !clk;
    end
    

    
    integer i;
    initial
    begin
        //inicializa el reloj 
        clk = 0;
        
        for(i = 0 ; i < 44; i = i + 1)
        begin
            addr = i;
            #10;
            
            if(addr == 6'b001000) ////Si esta en la direccion (8) donde [7] es el codigo ASCII (Acaba mi codigo)
            begin
                addr = 6'b101111;
                #10;
            end//end if
            
            else if(addr == 6'b001110) ////Si esta en la direccion (14) donde [R] es el codigo ASCII ( Acaba mi nombre (Hector))
            begin
                addr = 6'b101111;
                #10;
            end//end if,else if
            
            else if(addr == 6'b010101) ////Si esta en la direccion (21) donde [O] es el codigo ASCII ( Acaba mi nombre (Eduardo))
            begin
                addr = 6'b101111;
                #10;
                i = 28;
            end//end if,else if,else if
            
            else if(addr == 6'b100100 ) //Si esta en la direccion (36) donde [E] es el codigo ASCII ( Acaba mi apellido (Berrospe))
            begin
                addr = 6'b101111;
                #10;
            end//end if,else if,else if , else if         
     
        end//end for

    $stop;
    end
    
endmodule
