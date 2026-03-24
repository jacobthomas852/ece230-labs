/*
    There are a couple places with lots of commented out code.
    This is because once I completed the regular way,
    I wanted to do a more optimized (in terms of notation) method
    to learn a little bit extra. I promise I actually understand
    what is going on in both methods, that's why I left both
    approaches in. Also, it's basically just computer science
    so it's really not that big of a leap to figure this out
*/

module top(
    input [15:0]sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0]led
);
    // Semantic I/O aliases
    wire [3:0]ceo_data_in;
    wire [3:0]you_data_in;
    wire [3:0]fred_data_in;
    wire [3:0]jill_data_in;
    
    assign ceo_data_in = sw[3:0];
    assign you_data_in = sw[7:4];
    assign fred_data_in = sw[11:8];
    assign jill_data_in = sw[15:12];
    
    wire [1:0]mux_sel;
    wire [1:0]demux_sel;
    wire enable;
    
    assign mux_sel = {btnU, btnL};
    assign demux_sel = {btnR, btnD};
    assign enable = btnC;
    
    // Data selection (multiplexing)
    wire [3:0] transmission_data;
    mux4 connector(
        .data_in({jill_data_in, fred_data_in, you_data_in, ceo_data_in}),
        .enable(enable),
//        .data_in_A(ceo_data_in),
//        .data_in_B(you_data_in),
//        .data_in_C(fred_data_in),
//        .data_in_D(jill_data_in),
        .select(mux_sel),
        .data_out(transmission_data)
    );
    
    demux4 dispatcher(
        .data_in(transmission_data),
        .select(demux_sel),
        .enable(enable),
        .data_out(led[15:0])
    );
endmodule