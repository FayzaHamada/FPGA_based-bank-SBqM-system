`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 17:34:06
// Design Name: 
// Module Name: SBqM
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


module SBqM(input clk,
            input      rst,
             input     SensorIn,
               input   SensorOut,
                 input TellerOne,
                 input TellerTwo,
                 input TellerThree,
             output Empty,
             output       Full,
              output      [6:0] WTimeTensSevenSegment,//
                  output  [6:0] WTimeUintsSevenSegment, //  
                   output [6:0] PCountSevenSegment      ///
                  
                 

    );
    
    //================ wire===========================
    wire 
	 //slowClk,
         In,
         Out,
         Up,
         Down;
    wire [2:0] Pcount;     
    wire [4:0] WTime;
    
    assign Empty =~(Pcount[2] | Pcount[1] | Pcount[0]); 
    assign Full=Pcount[2] & Pcount[1]& Pcount[0];
  /* ClockDivider ClockDividerU0(
                                 .clk(clk),
                                  .rst(rst),
                                  .slowClk(slowClk)
                                    );
    */
    
    Debouncer DebouncerSensorIn ( .clk(clk),
                              .rst(rst),
                              .Sensor(SensorIn),
                              .Out(In));
                          
                         
                     
     Debouncer DebouncerSensorOut ( .clk(clk),
                              .rst(rst),
                              .Sensor(SensorOut),
                              .Out(Out)); 
                         
                         
                         
       FSM Contoller (
     .clk(clk),
     .rst(rst),
     .FSMIn(In),
     .FSMOut(Out),
     .Up(Up),
      .Down(Down)
    );                            
                         
     QueueCounter QueueCounterU0(
    . clk(clk),
    . rst(rst),
    . Up(Up),
    . Down(Down),
    . Pcount(Pcount)
    );     
     ROM ROMU0(
    . clk(clk),
    . PCount(Pcount),
    . TellerOne(TellerOne),
    . TellerTwo(TellerTwo),
    . TellerThree(TellerThree),
    .  WTime(WTime)
    );
    
     DecoderWTime DecoderWTimeU0 (
                                   .WTime(WTime),
                                    .Tens(WTimeTensSevenSegment),
                                    .Uints(WTimeUintsSevenSegment));
                                    
                                         
     DecoderPcount DecoderPcountU0 (Pcount, PCountSevenSegment);                                     

endmodule
