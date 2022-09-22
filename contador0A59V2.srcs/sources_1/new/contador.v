`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Chihuahua
// Engineer: Alex Armando Figueroa Hernandez
// 
// Create Date: 09/20/2022 07:51:23 PM
// Design Name: contador0A59V2
// Module Name: contador
// Project Name: 
// Target Devices: Arty 7
// Tool Versions: Vivado 2019.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module contador(
    input wire clk, res,
    output reg [3:0] bcdd,
    output reg [3:0] bcdu
 );   
 
    integer clock = 0;
    
     always@(posedge(clk),posedge(res))
     begin
        if(res)
        begin
            bcdd = 0;
            bcdu = 0;
        end
        else
        begin
            if (clk)
                bcdu = bcdu + 1;
              //  clock = clock + 1;
                if (bcdu > 9)
                begin
                    bcdu = 0;
                    bcdd = bcdd+1;  
                    if (bcdd > 5)
                        bcdd = 0;
                    end
                end
        end
endmodule
