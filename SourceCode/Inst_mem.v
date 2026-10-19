`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 07:29:01 PM
// Design Name: 
// Module Name: Inst_mem
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

//pg  495 txtbook
module Inst_mem(CS, WE, CLK, ADDR, Mem_Bus);
    input CS, WE, CLK;
    input [15:0] ADDR;
    inout [15:0] Mem_Bus;
    reg [15:0] data_out;
    reg [15:0] RAM [0:63];
    integer i;
    reg[6:0] counter;
    initial begin
      for (i=0; i<64; i=i+1) 
            begin
           RAM[i] = 16'd0; //initialize all locations to 0
         end
         $readmemh("MIPS_Instructions.txt", RAM);
          //this optional statement can be inserted to read initial values  
//from a file
  end
   assign Mem_Bus = ((CS == 1'b0) || (WE == 1'b1)) ? 16'bZ : data_out;
   always @(negedge CLK) begin    
        if((CS == 1'b1) && (WE == 1'b1))
            RAM[ADDR] <= Mem_Bus[15:0];
        data_out <= RAM[ADDR];
   end
endmodule