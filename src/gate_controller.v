module gate_controller(
    input clk,          // 100MHz clock from FPGA
    input ir_sensor,    // IR sensor input (0 = car detected)
    output reg servo    // PWM signal to servo
);

// Constants for PWM calculation
localparam CLK_FREQ = 100_000_000;  // FPGA clock speed (100MHz)
localparam PWM_FREQ = 50;           // Servo PWM frequency (50Hz)
localparam PWM_PERIOD = CLK_FREQ / PWM_FREQ;  // Clock cycles per PWM period

// Pulse widths in clock cycles
localparam PULSE_CLOSE = CLK_FREQ / 1000;    // 1ms pulse (0°)
localparam PULSE_OPEN = (3 * CLK_FREQ) / 2000; // 1.5ms pulse (90°)

reg [31:0] counter = 0;  // Counter for PWM generation

always @(posedge clk) begin
    // Reset counter after each PWM period (20ms)
    if (counter >= PWM_PERIOD) 
        counter <= 0;
    else 
        counter <= counter + 1;

    // Generate PWM pulse
    if (ir_sensor == 0)  // Car detected? Open gate (90°)
        servo <= (counter < PULSE_OPEN) ? 1 : 0;
    else                 // No car? Close gate (0°)
        servo <= (counter < PULSE_CLOSE) ? 1 : 0;
end
endmodule
