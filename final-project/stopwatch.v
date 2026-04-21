//StopWatch: Modulo-60 Counter
module stopwatch(
    input clk,
    input rst,
    input en,
    output [5:0] state     //6-bits to represent the highest number 59
);
    wire [5:0] sum;
    wire [6:0] carry;
    
    assign carry[0] = en; // Only count if enabled
    assign sync_reset = (state == 59); // Reset after counting to 59
    
    genvar i;
    generate
        for (i = 0; i < 6; i = i + 1) begin
            // Store the current bit's value
            dff state_reg (
                .Default(0),
                .D(sync_reset ? 0 : sum[i]), // Reset if needed, or continue counting
                .clk(clk),
                .reset(rst),
                .Q(state[i])
            );
            
            // Add to the sum if the previous bit carried out
            full_adder fa (
                .A(state[i]),
                .B(0),
                .Cin(carry[i]),
                .Cout(carry[i + 1]),
                .Y(sum[i])
            );
        end
    endgenerate
endmodule




