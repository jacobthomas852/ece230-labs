module mux(
    input [3:0] ceo, [3:0] you, [3:0] fred, [3:0] jill,
    input [1:0] sel,
    input enable,
    output [3:0] Y
);
    
    assign Y = enable ? (sel == 'b00 ? ceo:
                         sel == 'b01 ? you:
                         sel == 'b10 ? fred:
                         sel == 'b11 ? jill : 0) : 0;

endmodule