# fpga-based-smart-parking-system
FPGA-based smart parking system using Verilog with real-time vehicle detection, slot monitoring, and automated gate control
# FPGA-Based Smart Parking System

## Overview
This project implements a real-time smart parking system using Spartan-7 FPGA.  
The system detects vehicle presence, monitors parking slot availability, and controls gate operation automatically.

---

## Features
- Real-time vehicle detection using IR sensors  
- Automatic gate control using servo motor  
- Parking slot monitoring with LED indicators  
- FPGA-based real-time processing using Verilog HDL  

---

## Technologies Used
- Verilog HDL  
- Xilinx Vivado  
- Spartan-7 FPGA  
- IR Sensors  
- Servo Motor  

---

## Project Structure
src/
├── gate_controller.v
├── parking-system-top.v
└── slot_monitor.v

constraints/
└── smart_parking.xdc


---

## Working
1. IR sensors detect vehicle presence  
2. FPGA processes input signals  
3. Gate opens/closes using servo motor  
4. LEDs indicate parking slot availability  

---

## Applications
- Smart cities  
- Automated parking systems  
- Traffic management  

---

## Author
Navya Bharathi Vellanki
