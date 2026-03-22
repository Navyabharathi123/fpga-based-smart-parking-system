## Clock (100 MHz)
set_property PACKAGE_PIN G11 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

## Gate IR Sensor
set_property PACKAGE_PIN E2 [get_ports gate_ir]
set_property IOSTANDARD LVCMOS33 [get_ports gate_ir]

## Servo PWM
set_property PACKAGE_PIN L2 [get_ports servo_pwm]
set_property IOSTANDARD LVCMOS33 [get_ports servo_pwm]

## Slot IR Sensors
set_property PACKAGE_PIN B1 [get_ports slot1_ir]
set_property PACKAGE_PIN A2 [get_ports slot2_ir]
set_property IOSTANDARD LVCMOS33 [get_ports {slot1_ir slot2_ir}]

## Status LEDs
set_property PACKAGE_PIN F12 [get_ports led1]
set_property PACKAGE_PIN E11 [get_ports led2]
set_property IOSTANDARD LVCMOS33 [get_ports {led1 led2}]
