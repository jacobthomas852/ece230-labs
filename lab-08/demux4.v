module demux4(
    input [3:0] data_in,
    input [1:0] select,
    input enable, // low-active
    output [3:0][3:0] data_out
);
    // Fun approach
    genvar i;
    for (i = 0; i < 4; i = i + 1) begin
        assign data_out[i] = ~enable ? (select == i ? data_in : 0) : 0;
    end
    
    /* Naive approach
    assign data_out[0] = (select == 'b00 ? data_in : 0);
    assign data_out[1] = (select == 'b01 ? data_in : 0);
    assign data_out[2] = (select == 'b10 ? data_in : 0);
    assign data_out[3] = (select == 'b11 ? data_in : 0);
    */
endmodule