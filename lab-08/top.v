module top(
    input [15:0]sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0]led
);

       wire [1:0] brute;
       assign brute[0] = btnL;
       assign brute[1] = btnU;
       
       wire [1:0] mux_sel;
       assign mux_sel = {btnU, btnL};
       
       wire [1:0] brute_2;
       assign brute_2[0] = btnD;
       assign brute_2[1] = btnR;
       
       wire [1:0] demux_sel;
       assign demux_sel = {btnR, btnD};
       
       wire [3:0] mux_out;
       
       mux mux_inst(
            .enable(btnC),
            .ceo(sw[3:0]),
            .you(sw[7:4]),
            .fred(sw[11:8]),
            .jill(sw[15:12]),
            .sel(mux_sel),
            .Y(mux_out)
       );
       
       demux demux_inst(
            .in(mux_out),
            .sel(demux_sel),
            .local_lib(led[3:0]),
            .fire_dept(led[7:4]),
            .school(led[11:8]),
            .rib_shack(led[15:12])
       );


endmodule