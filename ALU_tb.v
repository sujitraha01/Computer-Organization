module tb_alu;
//Inputs
 reg[7:0] A,B;
 reg[1:0] ALU_Sel;

//Outputs
 wire[7:0] ALU_Out;
 
 alu test_unit(
            A,B,  // ALU 8-bit Inputs                 
            ALU_Sel,// ALU Selection
            ALU_Out // ALU 8-bit Output
            
     );
    initial begin
	$dumpfile("alu.vcd");
	$dumpvars(0,tb_alu);
	$monitor($time,"A=%h,B=%h,ALU_Sel=%b,ALU_Out=%h",A,B,ALU_Sel,ALU_Out);
    
      #5 A = 8'h01; B = 8'h00; ALU_Sel = 2'b00;
      #5 ALU_Sel=2'b01;
	#5 ALU_Sel=2'b10;
	#5 ALU_Sel=2'b11;
      
      
      
    end
endmodule