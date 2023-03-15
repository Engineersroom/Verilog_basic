`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 17:57:02
// Design Name: 
// Module Name: tb_D_FF
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


module tb_D_FF;
    reg D;
    reg clk;
    reg RST;
    wire Q;

    D_FF_ dff1(
        .d(D),
        .clk(clk),
        .rst(RST),
        .q(Q)
    );

    initial begin
        // Initialize inputs
        D = 0;
        clk = 0;
        RST = 0;

        // Toggle clock every 10 time units
        repeat (20) begin
            #5 clk = ~clk;
        end
        #5 RST = 1;
        // Set D to 1
        #5 D = 1;

        // Hold D at 1 and toggle clock
        repeat (10) begin
            #5 clk = ~clk;
        end

        // Set D to 0
        #5 D = 0;

        // Hold D at 0 and toggle clock
        repeat (10) begin
            #5 clk = ~clk;
        end

        $finish; // End simulation
    end

    // Monitor output values
    always @(Q)
    begin
        $display("Q = %b", Q);
    end

endmodule

//This testbench instantiates the D flip-flop module and applies a sequence of inputs to it. 
//The initial block initializes the inputs and toggles the clock signal every 5 time units for a total of 20 time units. 
//The always block monitors the output values of the flip-flop and displays them using the $display system task.

//You can run this testbench in a Verilog simulator to verify the functionality of the D flip-flop module.