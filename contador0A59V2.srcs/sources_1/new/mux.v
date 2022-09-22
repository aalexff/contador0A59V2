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


module mux(
    //Units and tens will come from a the output of a decoder, muxdiv is a clock signal that will come from a frequency divider 
    input wire [6:0] BCDD,
    input wire [6:0] BCDU,
    input wire muxdivp,
    input wire muxdivn,
    output reg [6:0] pmod/*= 7'h3f*/
    //pmod is the target 7-segment display.
    );
    
    always@(posedge (muxdivp),negedge(muxdivn))
    begin
           if( muxdivp)
           pmod = BCDU; 
           if(muxdivn)
           pmod = BCDD;  
    end
endmodule
