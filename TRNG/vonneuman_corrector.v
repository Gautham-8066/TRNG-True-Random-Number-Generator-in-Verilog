module vonneuman_corrector(
    input A,        // First bit
    input B,        // Second bit
    output F,       // Corrected output
    output valid    // High when output is valid
);

    wire xor_out;
    assign xor_out = A ^ B;  // Check if A != B

    assign valid = xor_out;  // Output valid when A != B
    
    assign F = xor_out ? A : 1'b0;

endmodule
