module mux4(
    input [3:0][3:0] data_in,
    
//    input [3:0] data_in_A,
//    input [3:0] data_in_B,
//    input [3:0] data_in_C,
//    input [3:0] data_in_D,
    
    input [1:0] select,
    input enable, // low-active
    output [3:0] data_out
);
    assign data_out = ~enable ? data_in[select] : 0;
    /* Naive approach
    assign data_out =
        select == 'b00 ? data_in_A :
        select == 'b01 ? data_in_B :
        select == 'b10 ? data_in_C :
        data_in_D;
     */

endmodule
