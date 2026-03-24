module mux4(
    input [31:0] data_in,
    input [1:0] select,
    input enable,
    output reg [7:0] data_out
);
    always @(*) begin
        if (enable)
            case (select)
                0: data_out <= data_in[7:0];
                1: data_out <= data_in[15:8];
                2: data_out <= data_in[23:16];
                3: data_out <= data_in[31:24];
            endcase
    end
endmodule
