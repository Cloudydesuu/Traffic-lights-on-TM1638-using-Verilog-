`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:10:38 10/12/2024
// Design Name:   counter_for_traffic
// Module Name:   /home/ise/TrafficLights/counter_trafic_tb.v
// Project Name:  TrafficLights
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_for_traffic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_trafic_tb;

	// Inputs
	reg clk2;
	reg reset;

	// Outputs
	wire [3:0] light_chuc1;
	wire [3:0] light_dv1;
	wire [3:0] light_chuc2;
	wire [3:0] light_dv2;
	wire [1:0] light1;
	wire [1:0] light2;
	wire flag;

	// Instantiate the Unit Under Test (UUT)
	counter_for_traffic uut (
		.clk2(clk2), 
		.reset(reset), 
		.light_chuc1(light_chuc1), 
		.light_dv1(light_dv1), 
		.light_chuc2(light_chuc2), 
		.light_dv2(light_dv2), 
		.light1(light1), 
		.light2(light2),
		.flag(flag)
	);

	initial begin
		// Initialize Inputs
		clk2 = 0;
		reset = 0;

		forever #10 clk2 =  ~clk2;

	end
      
endmodule

