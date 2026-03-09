module mac_array(
    input  [15:0] a0,
    input  [15:0] a1,
    input  [15:0] b0,
    input  [15:0] b1,
    input  [15:0] a2,
    input  [15:0] a3,
    input  [15:0] b2,
    input  [15:0] b3,
    output [31:0] y0,
    output [31:0] y1
);

// Two parallel MAC units

assign y0 = (a0 * b0) + (a1 * b1);
assign y1 = (a2 * b2) + (a3 * b3);

endmodule