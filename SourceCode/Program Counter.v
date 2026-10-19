`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 06:14:52 PM
// Design Name: 
// Module Name: Program Counter
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


module ProgramCounter #(
    parameter [15:0] RESET_ADDRESS = 16'h0000
)(
    input wire clk,
    input wire reset,
    input wire [15:0] nextAddress,
    output wire [15:0] pcOut
);

    reg [15:0] currentAddress;

    assign pcOut = currentAddress;

    always @(posedge clk) begin
        currentAddress <= reset
            ? RESET_ADDRESS
            : nextAddress;
    end

endmodule
