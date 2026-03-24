module demux(
    input [3:0] in,
    input [1:0] sel,
    output [3:0] local_lib, [3:0] fire_dept, [3:0] school, [3:0] rib_shack
);
    
    assign local_lib = (sel[1] == 1'b0 && sel[0] == 1'b0 ? in : 0);
    assign fire_dept = (sel[1] == 1'b0 && sel[0] == 1'b1 ? in : 0);
    assign school = (sel[1] == 1'b1 && sel[0] == 1'b0 ? in : 0);
    assign rib_shack = (sel[1] == 1'b1 && sel[0] == 1'b1 ? in : 0);

endmodule