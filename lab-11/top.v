module top(
    input btnC, btnU,
    output [6:0] led
);
    ripple_counter rc(
        .clk(btnC),
        .q(led[2:0]),
        .reset(btnU)
    );

    modulo_counter mc(
        .clk(btnC),
        .reset(btnU),
        .state(led[5:3]),
        .mod_out(led[6])
    );

endmodule