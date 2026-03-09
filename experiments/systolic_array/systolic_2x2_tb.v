module systolic_2x2_tb;

reg clk;
reg rst;

reg [15:0] a0,a1,a2,a3;
reg [15:0] b0,b1,b2,b3;

wire [31:0] c00,c01,c10,c11;

systolic_2x2 uut(
    .clk(clk),
    .rst(rst),
    .a0(a0), .a1(a1),
    .a2(a2), .a3(a3),
    .b0(b0), .b1(b1),
    .b2(b2), .b3(b3),
    .c00(c00), .c01(c01),
    .c10(c10), .c11(c11)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin

rst = 1;
#10;
rst = 0;

a0=1; a1=2;
a2=3; a3=4;

b0=5; b1=6;
b2=7; b3=8;

#100;
$finish;

end

endmodule