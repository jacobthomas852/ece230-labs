module t_flipflop (
    input Clk,
    input T,
    input Reset,
    output Q,
    output NotQ
);
    d_flipflop dff (
        .Clk(Clk),
        .D((T & NotQ) | (~T & Q)),
        .Reset(Reset),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule