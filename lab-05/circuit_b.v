module circuit_b(
    input A, B, C, D,
    output Y
);

    assign Y = B & ~D | A & B | ~C & ~D;

endmodule
