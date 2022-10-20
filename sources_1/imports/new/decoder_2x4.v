`timescale 1ns / 1ps

module decoder_2x4
(
    input [1:0] i_x,
    input i_en,
    output [3:0] o_y
);

    reg [3:0] r_y;
    assign o_y = r_y;

    always @(*) begin
        if (i_en) begin
            r_y = 4'b1111;
        end
        
        else begin
        case (i_x)
        2'b00 : r_y = 4'b1110;
        2'b01 : r_y = 4'b1101;
        2'b10 : r_y = 4'b1010;
        2'b11 : r_y = 4'b0110;
        endcase
        end
    end

endmodule
