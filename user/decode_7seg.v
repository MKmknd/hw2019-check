
module decode_7seg(input [3:0] in, output [7:0] out);

    function [7:0] decoder;
    input [3:0] f_in;
    begin
        case (f_in)
        4'b0000: decoder = 8'b1111_1100;
        4'b0001: decoder = 8'b0110_0000;
        4'b0010: decoder = 8'b1101_1010;
        4'b0011: decoder = 8'b1111_0010;
        // and more
        endcase
    end
    endfunction

    assign out = decoder(in);

endmodule