module cpu_tb;

reg clk;
reg reset;

cpu_top uut(
    .clk(clk),
    .reset(reset)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    reset = 1;
    #10;
    reset = 0;
    #100;
    $finish;
end

endmodule