`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:26 10/12/2024 
// Design Name: 
// Module Name:    mainblock 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mainblock(clk_50M, reset, dio, sclk, stb, data_check, light_chuc1, light_dv1, light_chuc2, light_dv2,light1, light2);
input clk_50M, reset;
wire clk1, clk2;
output wire [3:0] light_chuc1, light_dv1, light_chuc2, light_dv2;
output wire dio, stb, sclk;
output wire [7:0] data_check;
output wire [1:0] light1, light2;
Clock Clock(clk_50M, reset, clk1, clk2);
tm1638 tm1638(clk1, reset, stb, dio, sclk, data_check, light_chuc1, light_dv1, light_chuc2, light_dv2, light1, light2);
counter_for_traffic counter (clk2, reset, light_chuc1, light_dv1, light_chuc2, light_dv2, light1, light2);

endmodule
