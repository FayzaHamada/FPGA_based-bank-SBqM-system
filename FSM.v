`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 21:39:55
// Design Name: 
// Module Name: FSM
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


module FSM(
    input clk,
    input rst,
    input FSMIn,
    input FSMOut,
    output reg Up,
    output reg Down
    );
    parameter IDLE  = 3'b00,StateUp = 3'b01,StateDown = 3'b11 ;
     reg   [1:0]          state        ;// Seq part of the FSM
     reg   [1:0]          next_state   ;// combo part of FSM
    always @ (*)
    begin 
    next_state=2'b00;
    case(state)
    IDLE:if(FSMIn==1'b1 && FSMOut==1'b0)
         begin
         next_state=StateUp;
         end
         else if (FSMIn==1'b0 && FSMOut==1'b1)
         begin
         next_state=StateDown;
         end
         else
         begin
         next_state=IDLE;
         end
         
  StateUp :next_state=IDLE;
  StateDown :next_state=IDLE;
  default :next_state=IDLE;
         
         
         
    endcase
    end
        
    always @ (posedge clk or posedge rst)
  begin 
    if (rst) 
    begin
      state <= IDLE;  
    end 
    else
     begin
      state <=next_state;
    end
    
  end
    
    always @(posedge clk or posedge rst)
    begin
    if (rst)
    begin
    Up=1'b0;
    Down=1'b0;
    end
    else
    begin
    case(state)
    IDLE:begin
    Up=1'b0;
    Down=1'b0;
    end
    StateUp:begin
    Up=1'b1;
    Down=1'b0;
    end
    StateDown:
    begin
    Up=1'b0;
    Down=1'b1;
    end
    default:
    begin
    Up=1'b0;
    Down=1'b0;
    end
    endcase
    end
    
    end
        endmodule




