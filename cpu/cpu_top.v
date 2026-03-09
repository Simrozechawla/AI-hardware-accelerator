module cpu_top(
    input clk,
    input reset
);

wire [15:0] pc_out;
wire [15:0] instruction;

wire [3:0] opcode;
wire [3:0] rs1;
wire [3:0] rs2;
wire [3:0] rd;

wire [15:0] reg_data1;
wire [15:0] reg_data2;
wire [15:0] alu_result;

// Program Counter
pc pc_inst(
    .clk(clk),
    .reset(reset),
    .pc_out(pc_out)
);

// Instruction Memory
imem imem_inst(
    .addr(pc_out),
    .instruction(instruction)
);

// Decode instruction
assign opcode = instruction[15:12];
assign rs1    = instruction[11:8];
assign rs2    = instruction[7:4];
assign rd     = instruction[3:0];

// Register File
regfile regfile_inst(
    .clk(clk),
    .we(1'b1),                 // always write for now
    .read_addr1(rs1[2:0]),
    .read_addr2(rs2[2:0]),
    .write_addr(rd[2:0]),
    .write_data(alu_result),
    .read_data1(reg_data1),
    .read_data2(reg_data2)
);

// ALU
alu alu_inst(
    .a(reg_data1),
    .b(reg_data2),
    .opcode(opcode[2:0]),
    .result(alu_result)

);

endmodule