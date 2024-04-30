module selector(
    input wire counter1, counter2, counter3, counter4, clr,
    input wire select,
    output reg [3:0] register1,
    output reg [3:0] register2,
	 output reg enable1, enable2, clr1, clr2
);

always @(*) 
	begin
		if (select == 0) 
			begin // password is being set here
				register1[3] = counter1;
				register1[2] = counter2;
				register1[1] = counter3;
				register1[0] = counter4;
				register2 = 4'b0000;
		  
				//enable set reg and disable guess reg ig
				enable1 = 1;
				enable2 = 0;
				//only send clear signal to reg1
				clr1 = clr;
				clr2 = 0;
			end 
	 else 
		begin //password guessing thingy
			register1 = 4'b0000;
         register2[3] = counter1;
			register2[2] = counter2;
			register2[1] = counter3;
			register2[0] = counter4;
		  
			enable1 = 0;
			enable2 = 1;
		  
			clr1 = 0;
			clr2 = clr; 
    end
end

endmodule
