module alu(
           input [7:0] A,B,  // ALU 8-bit Inputs                 
           input [1:0] ALU_Sel,// ALU 2_bit Selection
           output [7:0] ALU_Out // ALU 8-bit Output
           
    );
    reg [7:0] ALU_Result;
    assign ALU_Out=ALU_Result;
    
    always @(*)
    begin
        case(ALU_Sel)
        2'b00: // Addition
           ALU_Result = A + B ; 
        2'b01: // Subtraction
           ALU_Result = A - B ;
        2'b10: // Multiplication
           ALU_Result = A * B;
        2'b11: // Division
           ALU_Result = A/B;
        
        endcase
    end

endmodule