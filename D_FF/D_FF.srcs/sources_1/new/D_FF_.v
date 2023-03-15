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
    input D,
    input clk,
    output reg Q,
    output reg nQ
    );
    
    always @(posedge clk)
        begin
            Q <= D;
            nQ <= ~D;
        end
    
endmodule
