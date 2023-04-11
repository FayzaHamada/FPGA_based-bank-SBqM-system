`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2022 21:28:39
// Design Name: 
// Module Name: DecoderPcount
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


module DecoderPcount (bcd, dec); 
input [2:0]bcd; 
output reg [6:0]dec;
//------------------Reg Declaration------------------//
//---------------Instantiate Modules-----------------//
//---------------------------------------------------//
always@(bcd)
begin
	case(bcd)
	3'b000: dec = ~7'b1111110; //0
	3'b001: dec = ~7'b0110000; //1
	3'b010: dec = ~7'b1101101; //2
	3'b011: dec = ~7'b1111001; //3
	3'b100: dec = ~7'b0110011; //4
	3'b101: dec = ~7'b1011011; //5
	3'b110: dec = ~7'b1011111; //6
	3'b111: dec = ~7'b1110000; //7

	default : dec = ~7'b1111110; //0
endcase
end 
endmodule
