`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2023 16:02:53
// Design Name: 
// Module Name: mod_n
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


module mod_n(out,clc,rst);
parameter N=15;
parameter width=4;
output reg [width-1:0]out;
input clc,rst;
always@(posedge clc)
begin
if (rst)
begin
out=0;
end
else 
begin 
if (out==N-1)
out=0;
else
out=out+1;
end
end
endmodule
