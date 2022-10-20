`timescale 1ns / 1ps

module mux_4x2(
    input [3:0] i_Fourth, i_Third, i_Second, i_First,
    input [1:0] i_site_Selection,
    output [3:0] o_value
    );

    reg [3:0] r_value;

    assign o_value = r_value;

    always @(*) begin
    case (i_site_Selection)
        2'b00 : r_value = i_First;
        2'b01 : r_value = i_Second;
        2'b10 : r_value = i_Third;
        2'b11 : r_value = i_Fourth;
    endcase
    end
endmodule
