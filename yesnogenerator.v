module yesnogenerator(
input wire in, enable,
output reg [6:0] display1, display2, display3, display4
);
	//zero = seg glows
	always @(in or enable)
	begin
		if(in == 0 && enable == 1) 
			begin //NOPE
				display1 = 7'b1101010; //n
				display2 = 7'b0000001; //O
				display3 = 7'b0011000; //P
				display4 = 7'b0110000; //E
			end
		else if(in == 1 && enable == 1)
			begin //NICE
				display1 = 7'b1101010;
				display2 = 7'b1111001; //I
				display3 = 7'b0110001; //C
				display4 = 7'b0110000;
			end
		else 
			begin
				display1 = 7'b1111111;
				display2 = 7'b1111111;
				display3 = 7'b1111111;
				display4 = 7'b1111111;
			end		
	end
endmodule
