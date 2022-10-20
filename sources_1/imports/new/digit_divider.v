`timescale 1ns / 1ps

module digit_divider(
    input [13:0] i_value,
    output [3:0] o_Fourth, o_Third, o_Second, o_First
    );

    assign o_First   = i_value % 10;
    assign o_Second  = i_value / 10 % 10;
    assign o_Third   = i_value / 100 % 10;
    assign o_Fourth  = i_value / 1000 % 10;
endmodule
