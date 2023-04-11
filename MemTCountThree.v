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


module MemTCountThree(
    input clk,
    input [2:0] PCount,
    output reg [4:0]  WTimeOfTCountThree
    );
    
   always @(posedge clk)
   begin
   case (PCount)
   
   3'b000:WTimeOfTCountThree=5'b00010;
   3'b001:WTimeOfTCountThree=5'b00011;
   3'b010:WTimeOfTCountThree=5'b00100;
   3'b011:WTimeOfTCountThree=5'b00101;
   3'b100:WTimeOfTCountThree=5'b00110;
   3'b101:WTimeOfTCountThree=5'b00111;
   3'b110:WTimeOfTCountThree=5'b01000;
   3'b111:WTimeOfTCountThree=5'b01001;
   default:WTimeOfTCountThree=5'b00000;
   
   
   
   endcase 
   end
endmodule
