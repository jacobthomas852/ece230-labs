module mod_divider (
    input Clk,
    input Reset,
    output [3:0] Q
);
    wire [2:0] Y;
    wire [3:0] Couts;
    wire value_reset;
    
    t_flipflop out (
        .Clk(Clk),
        .Reset(Reset),
        .T(Y == 6),
        .Q(Q[3])
    );
    
    assign value_reset = (Y == 7);
    
    full_adder fa1 (
        .A(Q[0]),
        .B(1),
        .Cin(0),
        .Y(Y[0]),
        .Cout(Couts[0])
    );
    
    d_flipflop dff1 (
        .Clk(Clk),
        .Reset(Reset || value_reset),
        .D(Y[0]),
        .Q(Q[0])
    );
    
    full_adder fa2 (
        .A(Q[1]),
        .B(0),
        .Cin(Couts[0]),
        .Y(Y[1]),
        .Cout(Couts[1])
    );
    
    d_flipflop dff2 (
        .Clk(Clk),
        .Reset(Reset || value_reset),
        .D(Y[1]),
        .Q(Q[1])
    );
    
    full_adder fa3 (
        .A(Q[2]),
        .B(0),
        .Cin(Couts[1]),
        .Y(Y[2]),
        .Cout(Couts[2])
    );
    
    d_flipflop dff3 (
        .Clk(Clk),
        .Reset(Reset || value_reset),
        .D(Y[2]),
        .Q(Q[2])
    );
    
endmodule