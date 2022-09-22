`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Chihuahua
// Engineer: Alex Armando Figueroa Hernandez
// 
// Create Date: 09/20/2022 07:51:23 PM
// Design Name: contador0A59V2
// Module Name: divisorDeFrecuencia
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


module divisorDeFrecuencia(
    input wire clk,
    output reg clkdiv = 0, muxdiv = 0
    );
    //Divisor de 1Hz
    //El reloj interno de la Arty, es de 100MHz.
    //Estos son, 100,000,000 cada segundo.
    //Para almacenar ese valor, se requieren de 27 bits.
    integer cuenta = 0;
        
    //Mientras no alcance los 100,000,000 ciclos de reloj, la cuenta segira aumentando.
    //Para evitar retardos por desbordamiento, la cuenta se resetea a 0 y se enviara al cliclo de reloj
    always@(posedge(clk))
    begin
        cuenta = cuenta + 1;
        if (cuenta == 500000)
        begin
            clkdiv = ~clkdiv;
            cuenta = 0;
            end
    end
endmodule
