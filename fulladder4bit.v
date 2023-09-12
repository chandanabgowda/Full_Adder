`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 22:15:06
// Design Name: 
// Module Name: fulladder4bit
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


module fulladder4bit(input cin,

output [3:0]sum, 
output cout , 
input [3:0]a,b);

wire c1,c2,c3,c4;

fulladder ad0( .a(a[0]), .b(b[0]),.cin(cin), .s(sum[0]), .cout(c1));
fulladder ad1( .a(a[1]), .b(b[1]),.cin(c1), .s(sum[1]), .cout(c2));
fulladder ad2( .a(a[2]), .b(b[2]),.cin(c2), .s(sum[2]), .cout(c3));
fulladder ad3( .a(a[3]), .b(b[3]),.cin(c3), .s(sum[3]), .cout(c4));
assign cout= c4;
endmodule

   
