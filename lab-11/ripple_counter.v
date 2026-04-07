module ripple_counter (
    input Clk,
    input Reset,
    output [2:0] Q
);
    wire [2:0] intermediates;
    t_flipflop tff0 (
        .Clk(Clk),
        .T(0'b1),
        .Reset(Reset),
        .Q(intermediates[0])
    );
    
    t_flipflop tff1 (
        .Clk(intermediates[0]),
        .T(0'b1),
        .Reset(Reset),
        .Q(intermediates[1])
    );
    
    t_flipflop tff2 (
        .Clk(intermediates[1]),
        .T(0'b1),
        .Reset(Reset),
        .Q(intermediates[2])
    );
    
    assign Q = intermediates;
endmodule