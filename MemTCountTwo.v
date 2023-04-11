`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2022 16:51:27
// Design Name: 
// Module Name: MemTCountOne
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


module MemTCountTwo(
    input clk,
    input [2:0] PCount,
    output reg [4:0]  WTimeOfTCountTwo
    );
    
   always @(posedge clk)
   begin
   case (PCount)
   
   3'b000:WTimeOfTCountTwo=5'b00010;
   3'b001:WTimeOfTCountTwo=5'b00011;
   3'b010:WTimeOfTCountTwo=5'b00101;
   3'b011:WTimeOfTCountTwo=5'b00110;
   3'b100:WTimeOfTCountTwo=5'b01000;
   3'b101:WTimeOfTCountTwo=5'b01001;
   3'b110:WTimeOfTCountTwo=5'b01011;
   3'b111:WTimeOfTCountTwo=5'b01100;
   default:WTimeOfTCountTwo=5'b00000;
   
   
   
   endcase 
   end
endmodule
