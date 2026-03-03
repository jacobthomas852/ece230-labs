module ones_complement (A, B, out);
    input [3:0]A;
    input [3:0]B;
    output [3:0]out;
    
    wire [3:0]initial_sum;
    wire [3:0]initial_carry;
    full_adder fa_0(
        .A(A[0]),
        .B(B[0]),
        .Cin(0),
        .Y(initial_sum[0]),
        .Cout(initial_carry[0])
    );
    
    full_adder fa_1(
        .A(A[1]),
        .B(B[1]),
        .Cin(initial_carry[0]),
        .Y(initial_sum[1]),
        .Cout(initial_carry[1])
    );
    
    full_adder fa_2(
        .A(A[2]),
        .B(B[2]),
        .Cin(initial_carry[1]),
        .Y(initial_sum[2]),
        .Cout(initial_carry[2])
    );
    
    full_adder fa_3(
        .A(A[3]),
        .B(B[3]),
        .Cin(initial_carry[2]),
        .Y(initial_sum[3]),
        .Cout(initial_carry[3])
    );
    
    wire [3:0]carry_around_carry;
    full_adder fa_carry_0(
        .A(initial_sum[0]),
        .B(0),
        .Cin(initial_carry[3]),
        .Y(out[0]),
        .Cout(carry_around_carry[0])
    );
    
    full_adder fa_carry_1(
        .A(initial_sum[1]),
        .B(0),
        .Cin(carry_around_carry[0]),
        .Y(out[1]),
        .Cout(carry_around_carry[1])
    );
    
    full_adder fa_carry_2(
        .A(initial_sum[2]),
        .B(0),
        .Cin(carry_around_carry[1]),
        .Y(out[2]),
        .Cout(carry_around_carry[2])
    );
    
    full_adder fa_carry_3(
        .A(initial_sum[3]),
        .B(0),
        .Cin(carry_around_carry[2]),
        .Y(out[3]),
        .Cout(carry_around_carry[3])
    );
    
endmodule