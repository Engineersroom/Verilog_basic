`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 19:17:02
// Design Name: 
// Module Name: tb_T_FF_
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


module tb_T_FF_();

    reg clk;
    reg reset_n;
    wire q;

    T_FF_ tff1(
        .clk(clk),
        .reset_n (reset_n),
        .q(q)
    );

    initial begin
        clk = 0;
        reset_n = 1;


        #10
        reset_n  = 0;

        repeat (10) begin
            #5 clk = ~clk;
        end

        reset_n  = 1;
        repeat (10) begin
            #5 clk = ~clk;
        end
    end

    always @(q)
    begin
        $display("q = %b", q);
    end

endmodule
