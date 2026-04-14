// Implement binary state machine
module binary(
    input w,
    input clk,
    input reset, 
    output z,
    output wire [2:0] State
);

    //wire [2:0] State;
    wire [2:0] Next;

    dff zero(
        .D(reset ? 1'b0 : Next[0]),
        .clk(clk),
        .Q(State[0])
    );

    dff one(
        .D(reset ? 1'b0 : Next[1]),
        .clk(clk),
        .Q(State[1])
    );

    dff two(
        .D(reset ? 1'b0 : Next[2]),
        .clk(clk),
        .Q(State[2])
    );

    assign z = (~State[2] & State[1] & ~State[0]) | (State[2] & ~State[1] & ~State[0]); //C or E

    assign Next[0] = (w & ~State[2] & ~(State[1] & State[0]) ) |  
                     (~w & ~(State[0] ^ State[1]) ); 

    assign Next[1] = (w & ~State[2] & ~(State[1] & State[0])) |
                     (~w & (State[1] ^ State[0])); // same as ^
    assign Next[2] = w & (State[2] | (State[1] & State[0])); // only true when E or D


endmodule