`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:54 10/12/2024
// Design Name:   mainblock
// Module Name:   /home/ise/TrafficLights/tb.v
// Project Name:  TrafficLights
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mainblock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk_50M;
	reg reset;

	// Outputs
	wire dio;
	wire sclk;
	wire stb;
	wire [7:0] data_check;
	wire [3:0] light_chuc1;
	wire [3:0] light_dv1;
	wire [3:0] light_chuc2;
	wire [3:0] light_dv2;
	wire [1:0] light1;
	wire [1:0] light2;

	// Instantiate the Unit Under Test (UUT)
	mainblock uut (
		.clk_50M(clk_50M), 
		.reset(reset), 
		.dio(dio), 
		.sclk(sclk), 
		.stb(stb), 
		.data_check(data_check), 
		.light_chuc1(light_chuc1), 
		.light_dv1(light_dv1), 
		.light_chuc2(light_chuc2), 
		.light_dv2(light_dv2), 
		.light1(light1), 
		.light2(light2)
	);

	initial begin
		// Initialize Inputs
		clk_50M = 0;
		reset = 1;
		#100;
		reset = 0;

		// Wait 100 ns for global reset to finish
		forever #10 clk_50M = ~clk_50M;
        
		// Add stimulus here

	end
      
endmodule

