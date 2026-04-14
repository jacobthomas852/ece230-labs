module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines
    one_hot oh(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .Astate(led[2]),
        .Bstate(led[3]),
        .Cstate(led[4]),
        .Dstate(led[5]),
        .Estate(led[6])
    );
    
    binary bin(
        .w(sw),
        .clk(btnC),
        .reset(btnU), 
        .z(led[1]),
        .State(led[9:7])

    );

endmodule
