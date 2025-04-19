module bitwise_xor_gate #(parameter N = 8) (
    input  wire [N-1:0] a,
    input  wire [N-1:0] b,
    output wire [N-1:0] y
);

genvar i;
generate
    for (i = 0; i < N; i = i + 1) begin : xor_loop
        xor (y[i], a[i], b[i]);
    end
endgenerate

endmodule
