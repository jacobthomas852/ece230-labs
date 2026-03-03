module twos_complement (A, out);
    input [7:0] A;
    output [7:0] out;
    
    wire [7:0] A_inv;
    assign A_inv = ~A;
    
    wire [7:0] carry;
    
    full_adder fa_0(
        .A(A_inv[0]),
        .B(0),
        .Cin(1),
        .Y(out[0]),
        .Cout(carry[0])
    );
    
    genvar i;
    for (i = 1; i < 8; i = i + 1) begin
        full_adder adder(
            .A(A_inv[i]),
            .B(0),
            .Cin(carry[i - 1]),
            .Y(out[i]),
            .Cout(carry[i])
        );
    end
endmodule