module mac_array_pipelined(
    input clk,
    input rst,

    input  [15:0] a0,a1,a2,a3,
    input  [15:0] b0,b1,b2,b3,

    output reg [31:0] y0,
    output reg [31:0] y1
);

// Stage 1 registers (multiplies)
reg [31:0] m0,m1,m2,m3;

// -------- Stage 1: Multiply --------
always @(posedge clk) begin
    if (rst) begin
        m0 <= 0;
        m1 <= 0;
        m2 <= 0;
        m3 <= 0;
    end
    else begin
        m0 <= a0 * b0;
        m1 <= a1 * b1;
        m2 <= a2 * b2;
        m3 <= a3 * b3;
    end
end

// -------- Stage 2: Accumulate --------
always @(posedge clk) begin
    if (rst) begin
        y0 <= 0;
        y1 <= 0;
    end
    else begin
        y0 <= m0 + m1;
        y1 <= m2 + m3;
    end
end

endmodule