`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 07:13:24 PM
// Design Name: 
// Module Name: SignExten
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


module SignExten(
    input wire  [7:0] imm,
    output reg [15:0] newAddress
    );
 
reg [7:0] address;
reg [15:0] full_value;
//reg [15:0] newAddress;
always @(imm)
begin
    address = imm;
    full_value = 16'h0000;
    assign newAddress = address + full_value;
    

end

endmodule
