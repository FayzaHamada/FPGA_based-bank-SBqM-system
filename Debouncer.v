module Debouncer        (input clk,
                              rst,
                              Sensor,
                        output Out);
  wire Q1,Q2;                      
 DFlipFlop DFlipFlopU0(clk,rst, Sensor,Q1 );
DFlipFlop DFlipFlopU1(clk,rst, Q1,Q2 ); 
assign Out =Q1 &~ Q2;

endmodule       
