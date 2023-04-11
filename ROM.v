`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 18:32:52
// Design Name: 
// Module Name: ROM
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


module ROM(
    input clk,
    input [2:0] PCount,
    input TellerOne,
    input TellerTwo,
    input TellerThree,
    output  [4:0] WTime
    );
    wire [1:0] TCount;
    wire [4:0] WTimeOfTCountOne,
                WTimeOfTCountTwo,
                  WTimeOfTCountThree;
      reg [4:0] WTimeReg;
     
     
     
     
     MemTCountOne MemTCountOneU0 (
     clk,
     PCount,
     WTimeOfTCountOne
    );
     MemTCountTwo MemTCountTwoU0 (
     clk,
     PCount,
     WTimeOfTCountTwo
    );
         MemTCountThree MemTCountThreeU0 (
     clk,
     PCount,
     WTimeOfTCountThree
    );
        
   always @(*)
  begin
    case (TCount)
      2'b00  : WTimeReg <= 5'b11111;
      2'b01  :  WTimeReg <= WTimeOfTCountOne;
      2'b10  :  WTimeReg <= WTimeOfTCountTwo;
      2'b11  :  WTimeReg <=WTimeOfTCountThree;
      default :  WTimeReg <= 5'b00000;
    endcase
  end    
    
    assign TCount=TellerOne+TellerTwo+TellerThree;
    assign WTime=WTimeReg;
endmodule
