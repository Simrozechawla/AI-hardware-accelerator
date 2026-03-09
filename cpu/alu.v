module alu(
    input  [15:0] a,
    input  [15:0] b,
    input  [2:0]  opcode,
    output reg [15:0] result
);

always @(*) begin
    case(opcode)
        3'b000: result = a + b;          // ADD
        3'b001: result = a - b;          // SUB
        3'b010: result = a * b;          // MUL
        3'b011: result = (a * b) + a;    // Simple MAC
        default: result = 16'd0;
    endcase
end

endmodule