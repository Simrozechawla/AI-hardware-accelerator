module pc(
    input clk,
    input reset,
    output reg [15:0] pc_out
);

always @(posedge clk or posedge reset) begin
    if (reset)
        pc_out <= 16'd0;
    else
        pc_out <= pc_out + 1;
end

endmodule