module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
    wire [31:0] stored_values;
    
    genvar i;
    for (i = 0; i < 4; i = i + 1) begin
        byte_memory byte (
            .data(data),
            .store(store && addr == i),
            .memory(stored_values[(i+1)*8-1 : i*8])
        );
    end
    
    mux4 mux (
        .data_in(stored_values),
        .select(addr),
        .enable(1),
        .data_out(memory)
    );
    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule