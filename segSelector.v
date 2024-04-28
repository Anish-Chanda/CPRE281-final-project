module segSelector (
    input wire inputs_set1a, inputs_set1b, inputs_set1c, inputs_set1d, inputs_set2a, inputs_set2b, inputs_set2c, inputs_set2d, select,
    output reg outputa, outputb, outputc, outputd
);

always @* begin
    if (select == 0) begin
        outputa = inputs_set1a;
        outputb = inputs_set1b;
        outputc = inputs_set1c;
        outputd = inputs_set1d;
    end
    else begin
        outputa = inputs_set2a;
        outputb = inputs_set2b;
        outputc = inputs_set2c;
        outputd = inputs_set2d;
    end
end

endmodule
