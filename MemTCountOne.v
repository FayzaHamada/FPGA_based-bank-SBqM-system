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


module MemTCountOne(
    input clk,
    input [2:0] PCount,
    output reg [4:0]  WTimeOfTCountOne
    );
    
   always @(posedge clk)
   begin
   case (PCount)
   
   3'b000:WTimeOfTCountOne=5'b00000;
   3'b001:WTimeOfTCountOne=5'b00011;
   3'b010:WTimeOfTCountOne=5'b00110;
   3'b011:WTimeOfTCountOne=5'b01001;
   3'b100:WTimeOfTCountOne=5'b01100;
   3'b101:WTimeOfTCountOne=5'b01111;
   3'b110:WTimeOfTCountOne=5'b10010;
   3'b111:WTimeOfTCountOne=5'b10101;
   default:WTimeOfTCountOne=5'b00000;
   
   
   
   endcase 
   end
endmodule
