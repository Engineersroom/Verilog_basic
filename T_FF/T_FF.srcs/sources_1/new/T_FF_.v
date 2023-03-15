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
    output q,
    output nq,
    input reset_n
);

    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            Q <= 0;
        end else begin
            Q <= ~Q;
        end
    end


    D_FF_ D_FF_(
        .D(clk),
        .clk(clk),
        .Q(q),
        .nQ(nq)
    );
endmodule
