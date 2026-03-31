module jk_ff(
    input clk, j, k,
    output q,
    output q_n //not q
);

    // making a d input 
    wire d_input;
    assign q_n = ~q;
    assign d_input = (j & q_n) | (~k & q);

    d_ff nested_d_ff (
        .clk(clk),
        .d(d_input),
        .q(q),
        .q_n(q_n)
    );
endmodule