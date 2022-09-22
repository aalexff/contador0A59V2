`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Chihuahua
// Engineer: Alex Armando Figueroa Hernandez
// 
// Create Date: 09/20/2022 07:51:23 PM
// Design Name: contador0A59V2
// Module Name: decoder
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


module decoder(
    input wire[3:0] BCDU,
    input wire[3:0] BCDD,
    output reg[6:0] SEGU7,
    output reg[6:0] SEGD7
    );
    always@(BCDU, BCDD)
    begin
        case(BCDU)
            //Catodo comun
            0: SEGU7 = 7'h3F;   //0111111
            1: SEGU7 = 7'h6;    //0000110
            2: SEGU7 = 7'h5B;   //1011011
            3: SEGU7 = 7'h4F;   //1001111
            4: SEGU7 = 7'h66;   //1100110
            5: SEGU7 = 7'h6D;   //1101101
            6: SEGU7 = 7'h7D;   //1111101
            7: SEGU7 = 7'h7;    //0000111
            8: SEGU7 = 7'h7F;   //1111111
            9: SEGU7 = 7'h6F;   //1101111
            default: SEGU7 =  7'hz;
        endcase
        case(BCDD)
            0: SEGD7 = 7'h3F;   //0111111
            1: SEGD7 = 7'h6;    //0000110
            2: SEGD7 = 7'h5B;   //1011011
            3: SEGD7 = 7'h4F;   //1001111
            4: SEGD7 = 7'h66;   //1100110
            5: SEGD7 = 7'h6D;   //1101101
            default: SEGD7 =  7'hz;
        endcase
    end
endmodule
