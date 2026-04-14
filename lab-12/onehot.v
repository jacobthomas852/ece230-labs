// Implement one-hot state machine
module one_hot(
    input w,
    input clk,
    input reset,
    output z
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;

    dff Adff(
        .Default(1'b1),
        .D(reset ? 1'b1 : Anext), //goes to 1 on reset
        .clk(clk),
        .Q(Astate)
    );

    dff Bdff(
        .Default(1'b0),
        .D(reset ? 1'b0 : Bnext), // goes to 0 on reset, same for the rest
        .clk(clk),
        .Q(Bstate)
    );

    dff Cdff(
        .Default(1'b0),
        .D(reset ? 1'b0 : Cnext),
        .clk(clk),
        .Q(Cstate)
    );

    dff Ddff(
        .Default(1'b0),
        .D(reset ? 1'b0 : Dnext),
        .clk(clk),
        .Q(Dstate)
    );

    dff Edff(
        .Default(1'b0),
        .D(reset ? 1'b0 : Enext),
        .clk(clk),
        .Q(Estate)
    );

    assign z = Cstate | Estate;

    assign Anext = 1'b0; //we never go back to A 
    assign Bnext = ~w & (Astate | Dstate | Estate);
    assign Cnext = ~w & (Bstate | Cstate);
    assign Dnext = w & (Astate | Bstate | Cstate);
    assign Enext = w & (Dstate | Estate);

endmodule