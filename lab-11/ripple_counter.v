module ripple_counter(
    input clk, reset,
    output [2:0] q

);
    wire [2:0] inter_wire;
    wire nq0, nq1, nq2;
    
    t_ff t0(
        .clk(clk),
        .t(0'b1),
        .Reset(reset),
        .q(inter_wire[0])
    );

    t_ff t1(
        .clk(inter_wire[0]),
        .t(0'b1),
        .Reset(reset),
        .q(inter_wire[1])
    );

    t_ff t2(
        .clk(inter_wire[1]),
        .t(0'b1),
        .Reset(reset),
        .q(inter_wire[2])
    );
    assign q = inter_wire;
endmodule