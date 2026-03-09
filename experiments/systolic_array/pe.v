module pe(
    input clk,
    input rst,

    input  [15:0] a_in,
    input  [15:0] b_in,

    output reg [15:0] a_out,
    output reg [15:0] b_out,

    output reg [31:0] acc
);

always @(posedge clk) begin
    if (rst) begin
        acc <= 0;
        a_out <= 0;
        b_out <= 0;
    end
    else begin
        acc <= acc + (a_in * b_in);
        a_out <= a_in;   // pass A to the right
        b_out <= b_in;   // pass B downward
    end
end

endmodule