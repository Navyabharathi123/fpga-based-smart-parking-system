module parking_system_top(
    input clk,              // 100MHz clock
    input gate_ir,          // Gate IR sensor (0 = car detected)
    input slot1_ir,         // Slot 1 IR sensor (0 = occupied)
    input slot2_ir,         // Slot 2 IR sensor (0 = occupied) 
    output servo_pwm,       // Servo control
    output led1,            // Slot 1 LED (1 = available)
    output led2,            // Slot 2 LED (1 = available)
    output uart_tx          // UART TX to NodeMCU (L1 on PMOD JB3)
);

// Gate controller
gate_controller gate(
    .clk(clk),
    .ir_sensor(gate_ir),
    .servo(servo_pwm)
);

// Slot status monitoring
slot_monitor slots(
    .clk(clk),
    .slot1_ir(slot1_ir),
    .slot2_ir(slot2_ir),
    .led1(led1),
    .led2(led2)
);

// UART transmitter (sends slot status every second)
uart_tx #(
    .CLK_FREQ(100_000_000),  // 100 MHz clock
    .BAUD_RATE(9600)         // UART baud rate
) uart (
    .clk(clk),
    .data({~slot2_ir, ~slot1_ir}), // 2-bit data: {slot2, slot1} (1=empty)
    .tx_start(1'b1),               // Continuous transmission
    .uart_tx(uart_tx)
);

endmodule  
