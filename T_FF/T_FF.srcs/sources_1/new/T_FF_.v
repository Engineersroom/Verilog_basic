`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 19:00:19
// Design Name: 
// Module Name: T_FF_
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


module T_FF_(
    input clk,
    input reset_n,
    output reg t
);

    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            t <= 0;
        end else begin
            t <= ~t;
        end
    end


    D_FF_ d_ff1(
        .d(clk),
        .clk(clk),
        .rst(reset_n),
        .q(t)
    );
endmodule
