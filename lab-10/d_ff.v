module d_ff(
    input clk, d,
    output reg q,
    output q_n //not q
);
    //initial state
    initial begin
        q = 0;
    end

    //moving the value of d into q
    always @(posedge clk) begin
        q <= d;
    end

    //getting not q
    assign q_n = ~q;
endmodule