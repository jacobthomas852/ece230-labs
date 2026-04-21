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
        .D(Next[0]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[0]),
        .reset(reset)
    );

    dff one(
        .D(Next[1]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[1]),
        .reset(reset)
    );

    dff two(
        .D(Next[2]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[2]),
        .reset(reset)
    );
    
    assign z = (State[1] & ~State[0]) | State[2]; //(~State[2] & State[1] & ~State[0]) | (State[2] & ~State[1] & ~State[0]); //C or E

//    assign Next[0] = (w & ~State[2] & ~(State[1] & State[0]) ) |  
//                     (~w & ~(State[0] ^ State[1]) ); 

//    assign Next[1] = (w & ~State[2] & ~(State[1] & State[0])) |
//                     (~w & (State[1] ^ State[0])); 
                     
//    assign Next[2] = w & (State[2] | (State[1] & State[0])); // only true when E or D
    assign Next[0] = (w & ~State[2] & ~State[0]) | 
                     (~w & ~State[1] & ~State[0]) | 
                     (w & ~State[2] & ~State[1]) |
                     (~w & State[1] & State[0]);
                     
    assign Next[1] = (w & ~State[2] & ~State[1]) | 
                     (~State[1] & State[0]) |
                     (State[1] & ~State[0]) ;
                     //                     (~State[2] & ~State[1] & State[0]) |
//                     (~State[2] & State[1] & ~State[0]) ;
                     
    assign Next[2] = w & (State[2] | (State[1] & State[0])); // only true when E or D


endmodule
