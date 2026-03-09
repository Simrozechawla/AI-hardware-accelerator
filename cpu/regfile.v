module regfile(
    input clk,
    input we,
    input [2:0] read_addr1,
    input [2:0] read_addr2,
    input [2:0] write_addr,
    input [15:0] write_data,
    output [15:0] read_data1,
    output [15:0] read_data2
);

reg [15:0] registers [0:7];
integer i;

// Initialize registers
initial begin
    for(i = 0; i < 8; i = i + 1)
        registers[i] = i;   // r0=0, r1=1, r2=2, ...
end

// Combinational read
assign read_data1 = registers[read_addr1];
assign read_data2 = registers[read_addr2];

// Sequential write
always @(posedge clk) begin
    if (we)
        registers[write_addr] <= write_data;
end

endmodule