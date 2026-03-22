module slot_monitor(
    input clk,          // 100MHz clock
    input slot1_ir,     // IR sensor for Slot 1 (0 = car present)
    input slot2_ir,     // IR sensor for Slot 2
    output reg led1,    // LED for Slot 1 (1 = empty)
    output reg led2     // LED for Slot 2
);

// LEDs glow when slot is EMPTY (IR sensor detects nothing)
always @(posedge clk) begin
    led1 <= slot1_ir;  // LED ON if slot1 is empty
    led2 <= slot2_ir;  // LED ON if slot2 is empty
end
endmodule
