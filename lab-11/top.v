module top (
    input btnU,
    input btnC,
    output [6:0] led
);
    ripple_counter rc_inst (
        .Clk(btnC),
        .Reset(btnU),
        .Q(led[2:0])
    );
    
    mod_divider md_inst (
        .Clk(btnC),
        .Reset(btnU),
        .Q(led[6:3])
    );
endmodule