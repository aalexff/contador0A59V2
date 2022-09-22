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


module topLevel(
    input wire clk100MHz, reset,
    output wire catodo, valor
    );
    
    reg divContador, divMux;
    reg [3:0] cd;
    reg [3:0] cu;
    reg [6:0] decenas;
    reg [6:0] unidades;
    
    divisorDeFrecuencia divisorDeFrecuenciaInst(.divContador (clk100MHz), .divMux (clk100MHz));
    contador contadorInst(.clk(divContador), .reset(reset), .bcdd(cd), .bcdu(cu));
    decoder decoderInst(.BCDU(cu), .BCDD(cd), .SEGD7(decenas), .SEGU7(unidades));
    mux muxinst(.divMux(divMux));
    
endmodule