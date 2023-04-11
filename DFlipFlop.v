`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2022 20:16:42
// Design Name: 
// Module Name: DFlipFlop
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


module DFlipFlop(input clk,
                       rst,
                       D,
                output reg Q
    );
    always @ (posedge clk or posedge rst) 
    begin
     if (rst)
        Q <= 1'b0;
        else
        Q<=D;
    end

endmodule
    

