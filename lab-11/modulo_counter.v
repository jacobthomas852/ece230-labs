module modulo_counter(
    input clk, reset, 
    output [2:0] state
);

wire c0, c1, c2; //connects adders together 
wire [2:0] sum; //temp sum 

full_adder bit0(
    .A(state[0]), 
    .B(1'b1), 
    .Cin(1'b0), 
    .Y(sum[0]), 
    .Cout(c0)
);

full_adder bit1(
    .A(state[1]), 
    .B(1'b0), 
    .Cin(c0), 
    .Y(sum[1]), 
    .Cout(c1)
);

full_adder bit2(
    .A(state[2]), 
    .B(1'b0), 
    .Cin(c1), 
    .Y(sum[2]), 
    .Cout(c2)
);

wire is_match; //bool returns true if 5 is in state
assign is_match = state[2] & ~state[1] & state[0];

wire restart_count; //true if we reach 5 OR btnU is clicked 
assign restart_count = btnU | is_match;

//if we do NOT need to restart, pass in values to d (like from slide 8 wk 11 )
wire [2:0] d_input; 
assign d_in[0] = sum[0] & ~restart_count;
assign d_in[1] = sum[1] & ~restart_count;
assign d_in[2] = sum[2] & ~restart_count;

//use d ff to store in state
d_ff b0 (
    .clk(btnC),
    .d(d_in[0]),
    .q(state[0]),
    .q_n() //leave empty?
);

d_ff b1 (
    .clk(btnC),
    .d(d_in[1]),
    .q(state[1]),
    .q_n() //leave empty?
);

d_ff b2 (
    .clk(btnC),
    .d(d_in[2]),
    .q(state[2]),
    .q_n() //leave empty?
);

endmodule