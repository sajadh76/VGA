# VGA Display Controller

This repository contains VHDL code for a VGA display controller. The VGA entity is a simple controller designed to generate a display output with horizontal and vertical synchronization signals, along with primary color outputs.

## Specifications
- **Clock Input:** `clk50_in` - System clock input
- **Color Outputs:**
  - `red`: Red color output
  - `green`: Green color output
  - `blue`: Blue color output
- **Control Signals:**
  - `hs_out`: Horizontal synchronization signal
  - `vs_out`: Vertical synchronization signal

## Implementation Details
The controller uses a 25 MHz clock (`clk25`) derived from the system clock. It incorporates logic to display the message "PANTECH SOLUTIONS" with specific constraints for horizontal and vertical lines. The color outputs are adjusted based on the constraints to achieve the desired display pattern.

## Usage
The VHDL code can be synthesized and implemented on FPGA platforms to drive VGA displays. Feel free to customize the display constraints or message within the provided logic.
