`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 17:37:22
// Design Name: 
// Module Name: QueueCounter
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


module QueueCounter(
    input clk,
    input rst,
    input Up,
    input Down,
    output [2:0] Pcount
    );
    
    reg [2:0] Counter;
    wire upDown;                          // Initialise register counter_up to find up counter states
    always @(posedge clk or posedge rst)          // Postive edge triggered circuit
    begin
        if(rst)
            begin
                Counter= 4'b0000;                  // If reset==1, set counter to 0000
            end
        else if (Up==1'b1 && Down==1'b0 && (Counter!=3'b111))  
            begin
                Counter = Counter + 4'b1;     // Else, add 0001 to counter
            end  
       else if(Up==1'b0 && Down==1'b1 && (Counter!=3'b000))  
            begin
              Counter = Counter - 4'b1;     // Else, add 0001 to counter
            end
        else
        begin
        Counter=Counter;
        end               
    end 
    
    assign Pcount=Counter;
    
    
    
endmodule
    
    
    
    

