FPGA Counter
Implements a simple counter in an FPGA using Verilog, 
which toggles an LED after reaching a predefined maximum count.
The counter is designed to increment on every rising edge of the clock signal (sys_clk)
and resets asynchronously when the reset signal (sys_rst_n) is asserted. 
Once the counter reaches the defined value (CNT_MAX = 25'd24_999_999), 
the LED (led_out) toggles its state, 
creating a visual indication of the counting process.

Key Features:

Parameterization: T
he counter's maximum value is defined using a parameter (CNT_MAX).
This allows flexibility in the design, where the maximum count can easily be adjusted by changing a single value.
Asynchronous Reset: 
The counter and the LED are reset asynchronously when sys_rst_n is low (1'b0),
ensuring that the system can be reset at any time, regardless of the clock signal.
Toggling LED: 
The LED output (led_out) toggles every time the counter reaches the maximum value, 
making it useful for time-based or frequency-division applications.

RTL Verilog Code Structure:
Inputs:
sys_clk: The clock signal driving the counter.
sys_rst_n: Asynchronous reset signal (active low).
Outputs:
led_out: A register that toggles when the counter reaches the maximum value.
Internal Registers:
cnt: A 25-bit register that increments on each clock cycle and resets to zero when it reaches CNT_MAX.

Testbench:
A testbench can be written to simulate the behavior of the counter,
providing stimulus such as clock and reset signals, and checking the functionality of the LED toggle. 
It runs the simulation for enough clock cycles to verify that the counter reaches the maximum value and toggles the LED correctly.

On-board Verification:
Once simulated successfully, the design is synthesized and loaded onto an FPGA.
The LED toggles at a slower rate (determined by the CNT_MAX value), providing a visual confirmation of the counter’s operation.
This design can be easily extended or modified for various FPGA-based applications requiring time-based counters or frequency dividers.


