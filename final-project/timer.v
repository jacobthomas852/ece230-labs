//Timer: Mod-60 downcounter with synchronous load
module timer(
    input clk,
    input rst,
    input en,               //Enables or Disables clock
    input load,             //If load=1, load the counter with "load_value"
    input [5:0] load_value, //Value to load into counter register. Counter will then start counting from this value
    output [5:0] state     //6-bits to represent the highest number 59
);
    // Only count down to zero, only while enabled
    assign count = state > 0 & en;
    
    genvar i;
    generate
        for (i = 0; i < 6; i = i + 1) begin
            dff state_reg (
                .Default(0),
                .D(
                    load ? load_value[i] : // Load value if needed
                    count & ((state << 6 - i) & 63) >> (6 - i) == 0 ? // Check if all lower bits are 0
                    ~state[i] : state[i] // If they are, flip, otherwise, keep the current value
                ),
                .clk(clk),
                .reset(rst),
                .Q(state[i])
            );
        end
    endgenerate
endmodule