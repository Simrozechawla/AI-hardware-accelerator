module mac_array_pipelined_tb;

reg clk;
reg rst;

reg [15:0] a0,a1,a2,a3;
reg [15:0] b0,b1,b2,b3;

wire [31:0] y0,y1;

mac_array_pipelined uut(
    .clk(clk),
    .rst(rst),
    .a0(a0), .a1(a1), .a2(a2), .a3(a3),
    .b0(b0), .b1(b1), .b2(b2), .b3(b3),
    .y0(y0), .y1(y1)
);

// Clock
initial clk = 0;
always #5 clk = ~clk;

initial begin
    rst = 1;
    #10;
    rst = 0;

    a0=1; b0=2;
    a1=3; b1=4;
    a2=5; b2=6;
    a3=7; b3=8;

    #50;
    $finish;
end

endmodule