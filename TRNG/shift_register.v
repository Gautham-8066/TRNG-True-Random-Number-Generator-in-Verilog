module shift_register(
    input  wire        clk,                 
    input  wire        rst, 
    input load,                
    input  wire        processed_bit_valid, 
    input  wire        processed_bit,       
    output reg  [31:0] shift_reg            
);

always @(posedge clk or posedge rst) 
begin
if(load)
    if (rst) begin
        shift_reg <= 32'b0;
    end else if (processed_bit_valid) begin
        shift_reg <= {shift_reg[30:0], processed_bit}; 
    end
end

endmodule
