module t_ff(
    input clk, t,
    output reg q,
    output q_n //not q
);

    assign q_n = ~q;

    initial begin
        q <= 0;
    end

    always @(posedge clk) begin
        if (t)
            q <= ~q;
    end
endmodule