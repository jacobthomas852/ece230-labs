module ripple_counter(
    input clk,
    output [2:0] q

);
    wire w0, w1, w2;
  
    t_ff t0(
        .clk(clk),
        .t(1'b1),
        .q(q[0]),
        .q_n(nq0)
    );

    t_ff t1(
        .clk(nq0),
        .t(1'b1),
        .q(q[1]),
        .q_n(nq1)
    );

    t_ff t2(
        .clk(nq1),
        .t(1'b1),
        .q(q[2]),
        .q_n(nq2)
    );
endmodule