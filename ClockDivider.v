`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2022 20:07:35
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(
    input clk,
    input rst,
    output slowClk
    );
    reg[17:0] counter;
    always @ (posedge clk or posedge rst)
    begin
    if (rst)
    counter=6'b000000;
    else
    counter=counter+1; 
    end  
    assign slowClk=(counter<131072)?1'b1:1'b0;
    
endmodule