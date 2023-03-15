`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 17:53:21
// Design Name: 
// Module Name: D_FF_
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


module D_FF_(
    input d,
    input clk,
    input rst,
    output reg q

);

    always @(posedge clk or negedge rst)
    if (!rst) begin
        q <= 0;
    end else begin
        q <= d;
    end



endmodule
