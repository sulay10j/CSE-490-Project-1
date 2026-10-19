`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2026 01:56:02 PM
// Design Name: 
// Module Name: test_adder
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


module test_adder;
reg [15:0] a;
reg [15:0] b;
reg clk;
wire [15:0] sum;
sixteenbit_adder uut(
        .a(a),
        .clk(clk),
        .sum(sum)
        
);
initial clk = 0;
always #20 clk = ~clk;   // 10 ns period
initial begin
        a = 16'h0000;
        #40;
        $display(sum);
        
        
        a = 16'h0002;
        #40;
        $display(sum);
        
        
        a = 16'hFFFF;
        #40;
        $display(sum);
        
        
        a = 16'h0006;
        #40;
        $display(sum);
        
          
        
        $finish;
    end
endmodule
