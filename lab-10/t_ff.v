module t_ff(
    input clk, t,
    output q,
    output q_n //not q
);

    // making a d input 
    wire d_input;
    assign d_input = (j & q_n) | (~k & q);

    jk_ff nested_jk_ff (
        .clk(clk),
        //might work
        .j(t),
        .k(t),
        //
        .q(q),
        .q_n(q_n)
    );
endmodule