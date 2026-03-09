module imem(
    input  [15:0] addr,
    output [15:0] instruction
);

reg [15:0] memory [0:15];
integer i;

initial begin
    // opcode rs1 rs2 rd

    memory[0] = 16'b0010_0001_0010_0101; // MUL r1,r2 -> r5
    memory[1] = 16'b0010_0011_0100_0110; // MUL r3,r4 -> r6
    memory[2] = 16'b0000_0101_0110_0111; // ADD r5,r6 -> r7
    memory[3] = 16'b0000_0000_0000_0000; // NOP

    // Initialize remaining memory
    for(i = 4; i < 16; i = i + 1) begin
        memory[i] = 16'b0000_0000_0000_0000;
    end
end

assign instruction = memory[addr[3:0]];

endmodule