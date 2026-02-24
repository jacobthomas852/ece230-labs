module top(
    input [7:0]sw,
    output [5:0]led
);
    light light_inst(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0])
    );
    
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );
    
    wire full_adder_carry;
    full_adder full_adder_lsb(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(full_adder_carry)
    );
    
    full_adder full_adder_msb(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(full_adder_carry),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule