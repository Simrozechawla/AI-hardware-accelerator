module systolic_2x2(
    input clk,
    input rst,

    input [15:0] a0, a1,
    input [15:0] a2, a3,

    input [15:0] b0, b1,
    input [15:0] b2, b3,

    output [31:0] c00, c01,
    output [31:0] c10, c11
);

wire [15:0] a_wire0, a_wire1;
wire [15:0] b_wire0, b_wire1;

pe pe00(clk,rst,a0,b0,a_wire0,b_wire0,c00);
pe pe01(clk,rst,a_wire0,b1,, ,c01);

pe pe10(clk,rst,a2,b_wire0,a_wire1,b_wire1,c10);
pe pe11(clk,rst,a_wire1,b3,, ,c11);

endmodule