module DecoderWTime (WTime, Tens,Uints); 
input [4:0]WTime; 
output reg [6:0]Tens;
output reg [6:0]Uints;
//------------------Reg Declaration------------------//
//---------------Instantiate Modules-----------------//
//---------------------------------------------------//

always@(*)
begin
	Tens=~7'b1111110;
	case(WTime)
	5'b00000: Uints = ~7'b1111110; //0 
	5'b00001: Uints = ~7'b0110000; //1
	5'b00010: Uints = ~7'b1101101; //2
	5'b00011: Uints = ~7'b1111001; //3
	5'b00100: Uints= ~7'b0110011;  //4
	5'b00101: Uints = ~7'b1011011; //5
	5'b00110: Uints = ~7'b1011111; //6
	5'b00111: Uints = ~7'b1110000; //7
	5'b01000: Uints = ~7'b1111111; //8
	5'b01001: Uints = ~7'b1111011; //9


	5'b01010: begin
	          Tens =~7'b0110000 ; 
			  Uints =~ 7'b1111110;
			  end //10
	5'b01011:begin Tens = ~7'b0110000;
			Uints = ~7'b0110000;
	end  //11
	5'b01100:begin Tens = ~7'b0110000;
			Uints = ~7'b1101101;
	end  //12
        5'b01101:begin Tens = ~7'b0110000;
				Uints = ~7'b1111001;
	end  //13

	5'b01110:begin Tens = ~7'b0110000; 
				Uints = ~7'b0110011;
	end  //14
	5'b01111:begin Tens = ~7'b0110000;
				Uints = ~7'b1011011;
	end  //15
	5'b10000:begin Tens = ~7'b0110000;
			Uints = ~7'b1011111;
	end  //16
	5'b10001:begin Tens = ~7'b0110000;
				Uints = ~7'b1110000;
	end  //17
	5'b10010:begin Tens = ~7'b0110000; 
			Uints = ~7'b1111111;
	end  //18
	5'b10011:begin Tens = ~7'b0110000; 
			Uints = ~7'b1111011;
	end  //19
	
	
	5'b10100:begin Tens = ~7'b1101101 ;
	Uints = ~ 7'b1111110;
	end 
	 //20

 	5'b10101:begin Tens = ~7'b1101101 ;
	Uints = ~7'b0110000 ;
	end  //21
        5'b10110:begin Tens = ~7'b1101101  ;
		Uints = ~7'b1101101;
	end  //22
	5'b10111:begin Tens = ~7'b1101101 ;
	Uints = ~7'b1111001;
	end  //23
	5'b11000:begin Tens = ~7'b1101101 ;
	Uints = ~7'b0110011;
	end  //24
	5'b11001:begin Tens = ~7'b1101101 ;
	Uints = ~7'b1011011;
	end  //25
	5'b11010:begin Tens = ~7'b1101101 ;
	Uints = ~7'b1011111;
	end  //26
	5'b11011:begin Tens = ~7'b1101101 ;
	Uints = ~7'b1110000;
	end  //27
        5'b11100:begin Tens = ~7'b1101101  ;
		Uints =~7'b1111111;
	end  //28
	5'b11101:begin Tens = ~7'b1101101 ;
	Uints  = ~7'b1111011;
	end  //29

	5'b11110:begin Tens = ~7'b1111001 ;
	Uints = ~ 7'b1111110;
	end  //30
	5'b11111:begin Tens = ~7'b1111001 ;
	Uints = ~7'b0110000;
	end //31
	










	default : Uints = ~7'b1111110; //0
endcase
end 
endmodule
