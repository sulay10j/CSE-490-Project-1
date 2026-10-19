`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2026 04:15:00 PM
// Design Name: 
// Module Name: sixteenbit_adder
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
module sixteenbit_adder(
    input wire [15:0] a,
    output reg [15:0] sum,
    input clk
    );
    /* The statement B = 4'b1100 assigns 1 to B[3], 1 to B[2], 0 to B[1], and 0  
to B[0].
*/
reg [15:0] adress;
reg [15:0] two_bytes;
reg [15:0] full;
always @(posedge clk)
begin
    adress = a;
    two_bytes = 16'h0002;
    full = 16'hffff;
    if (adress == full ) begin
       sum = 16'h0000;
    end
    else begin
        sum = adress+two_bytes;
    end
end
endmodule
