module mac_array_tb;

reg  [15:0] a0,a1,a2,a3;
reg  [15:0] b0,b1,b2,b3;
wire [31:0] y0,y1;

mac_array uut(
    .a0(a0), .a1(a1), .b0(b0), .b1(b1),
    .a2(a2), .a3(a3), .b2(b2), .b3(b3),
    .y0(y0), .y1(y1)
);

initial begin
    // First dot product: (1*2 + 3*4) = 14
    a0=1; b0=2;
    a1=3; b1=4;

    // Second dot product: (5*6 + 7*8) = 86
    a2=5; b2=6;
    a3=7; b3=8;

    #10;
    $finish;
end

endmodule