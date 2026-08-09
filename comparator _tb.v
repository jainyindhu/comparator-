// Testbench for 4-bit Comparator

module comparator_tb;

reg [3:0] A;
reg [3:0] B;

wire A_greater_B;
wire A_equal_B;
wire A_less_B;

// Instantiate Comparator
comparator uut (
    .A(A),
    .B(B),
    .A_greater_B(A_greater_B),
    .A_equal_B(A_equal_B),
    .A_less_B(A_less_B)
);

initial begin

    // Generate waveform
    $dumpfile("waveform.vcd");
    $dumpvars(0, comparator_tb);

    $display(" A    B   | A>B  A=B  A<B");
    $display("--------------------------");

    A = 4'b0000; B = 4'b0000;
    #10;
    $display("%04b  %04b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 4'b0101; B = 4'b0011;
    #10;
    $display("%04b  %04b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 4'b0010; B = 4'b0110;
    #10;
    $display("%04b  %04b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 4'b1010; B = 4'b1010;
    #10;
    $display("%04b  %04b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 4'b1111; B = 4'b1001;
    #10;
    $display("%04b  %04b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    A = 4'b0011; B = 4'b0111;
    #10;
    $display("%04b  %04b |  %b    %b    %b",
             A, B, A_greater_B, A_equal_B, A_less_B);

    $finish;
end

endmodule