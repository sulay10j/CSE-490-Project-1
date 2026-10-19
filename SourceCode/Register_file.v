`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 07:23:43 PM
// Design Name: 
// Module Name: Register_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//pg 494 txtbook
module Register_file(CLK, RegW, DR, SR1, 
SR2, Reg_In, ReadReg1, ReadReg2);
    input CLK, RegW;
    input [4:0] DR, SR1, SR2;
    input [15:0] Reg_In;
    output reg [15:0] ReadReg1, ReadReg2;
    reg [15:0] REG [0:31];
    integer i;
    initial begin
        ReadReg1 = 0;
        ReadReg2 = 0;
          for (i = 0; i < 16; i = i+1) begin
              REG[i] = 0;
          end
    end
    always @(posedge CLK) begin
        if(RegW == 1'b1)
            REG[DR] <= Reg_In[15:0];
        ReadReg1 <= REG[SR1];
        ReadReg2 <= REG[SR2];
    end
endmodule
