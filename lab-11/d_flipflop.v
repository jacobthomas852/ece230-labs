module d_flipflop (
    input Clk,
    input D,
    input Reset,
    output reg Q,
    output NotQ
);
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clk) begin
        Q <= D;
    end
    
    always @(Reset) begin
        Q <= 0;
    end
    
    assign NotQ = ~Q;
endmodule