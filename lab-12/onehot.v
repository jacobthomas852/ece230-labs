// Implement one-hot state machine
module one_hot(
    input w,
    input clk,
    input reset,
    output z, Astate, Bstate, Cstate, Dstate, Estate
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
//    wire Astate, Bstate, Cstate, Dstate, Estate;

    dff Adff(
        .Default(1'b1),
        .D(Anext), //goes to 1 on reset
        .clk(clk),
        .Q(Astate),
         .reset(reset)

    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext), // goes to 0 on reset, same for the rest
        .clk(clk),
        .Q(Bstate),
        .reset(reset)

    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate),
        .reset(reset)

    );

    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate),
        .reset(reset)

    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate),
        .reset(reset)

    );

    assign z = Cstate | Estate;

    assign Anext = 1'b0; //we never go back to A 
    assign Bnext = ~w & (Astate | Dstate | Estate);
    assign Cnext = ~w & (Bstate | Cstate);
    assign Dnext = w & (Astate | Bstate | Cstate);
    assign Enext = w & (Dstate | Estate);

endmodule
