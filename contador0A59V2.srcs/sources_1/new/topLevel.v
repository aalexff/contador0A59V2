`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2022 07:51:23 PM
// Design Name: 
// Module Name: contador
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


module topLevel(
    input wire clk100MHz, reset,
    output wire catodo, valor
    );
    
    reg divContador, divMux;
    reg [6:0] decenas;
    reg [6:0] unidades;
    
    divisorDeFrecuencia divisorDeFrecuenciaInst(.divContador (clk100MHz), .divMux (clk100MHz));
    contador contadorInst(.clk(divContador), .reset(reset), .bcdd(decenas), .bcdu(unidades));
    decoder decoderInst(.unidades(unidades), .decenas(decenas));
    mux mixinst(.divMux(divMux));
    
endmodule