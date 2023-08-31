`timescale 1ns / 1ps


module mod_n_tb;
parameter N=15;
parameter width=4;
reg clc,rst;
wire [width-1:0]out;
mod_n uut(out,clc,rst);
initial begin
clc=1; rst=1;
#100
rst=0;
end
    always #25 clc=~clc;
endmodule
