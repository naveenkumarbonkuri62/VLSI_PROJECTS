SYNCHRONOUS FIFO DESIGN USING VERILOG

PROJECT OVERVIEW

This project implements a parameterized Synchronous FIFO (First-In First-Out) memory using Verilog HDL along with a complete testbench for functional verification.

The FIFO design supports configurable depth and data width. It uses pointer-based full and empty detection logic with an extra MSB technique to differentiate between full and empty conditions.

This design is fully synthesizable and suitable for FPGA or ASIC implementation.

DESIGN SPECIFICATIONS

FIFO Type : Synchronous FIFO (Single Clock)
Default Depth : 8
Default Data Width : 32 bits
Reset Type : Active-low asynchronous reset (rst_n)
Clock Type : Single clock domain

Parameters:

FIFO_DEPTH – Number of storage locations
DATA_WIDTH – Width of each data word

ARCHITECTURE DESCRIPTION

The FIFO consists of the following blocks:

• Memory array (Register-based storage)
• Write pointer
• Read pointer
• Full detection logic
• Empty detection logic

The memory is implemented as a two-dimensional register array:

reg [DATA_WIDTH-1:0] fifo [0:FIFO_DEPTH-1]

POINTER DESIGN

Both read and write pointers are implemented with one extra MSB bit.

Pointer Width = log2(FIFO_DEPTH) + 1

The extra MSB is used to distinguish between full and empty conditions when lower bits match.

FIFO OPERATION

A. WRITE OPERATION

Write occurs when:

• cs = 1
• wr_en = 1
• full = 0

Data is written into memory at the location indexed by the write pointer (lower bits only).

After writing, the write pointer increments by 1.

B. READ OPERATION

Read occurs when:

• cs = 1
• rd_en = 1
• empty = 0

Data is read from memory at the location indexed by the read pointer (lower bits only).

After reading, the read pointer increments by 1.

EMPTY AND FULL LOGIC

EMPTY CONDITION:

FIFO is empty when:

read_pointer == write_pointer

FULL CONDITION:

FIFO is full when:

read_pointer equals write_pointer with inverted MSB and same lower bits.

This extra MSB technique ensures correct differentiation between full and empty states.

Important Note:
FIFO_DEPTH must be a power of 2 for the full detection logic to work correctly.

TESTBENCH DESCRIPTION

The testbench verifies FIFO functionality through three scenarios:

SCENARIO 1 – Basic Write and Read
• Writes three values into FIFO
• Reads three values
• Verifies correct FIFO order (First-In First-Out)

SCENARIO 2 – Continuous Write and Read
• Writes and reads inside a loop
• Verifies continuous operation

SCENARIO 3 – Full and Empty Condition Check
• Fills FIFO completely
• Attempts additional write
• Reads all values
• Verifies correct full and empty flag behavior

Clock Period: 10 ns
Timescale: 1ns / 1ps

SIMULATION

Simulation generates waveform file (dump.vcd) for verification.

Simulation Steps (Icarus Verilog example):

Compile:
iverilog fifo_sync.v tb_fifo_sync.v -o fifo

Run:
vvp fifo

View waveform:
gtkwave dump.vcd

DESIGN FEATURES

• Parameterized design
• Proper full and empty detection
• Extra MSB pointer technique
• Clean synchronous RTL coding style
• Synthesizable design
• No latch inference

LIMITATIONS

• FIFO depth must be power of 2
• Register-based memory (not optimal for very large depth)
• No overflow or underflow error flags
• No almost_full or almost_empty signals

POSSIBLE IMPROVEMENTS

• Add overflow and underflow detection
• Add almost_full and almost_empty flags
• Implement asynchronous FIFO
• Replace register array with RAM-based implementation
• Add SystemVerilog assertions
• Add functional coverage

LEARNING OUTCOMES

This project demonstrates:

• FIFO architecture design
• Pointer-based control logic
• Extra MSB full detection technique
• Synchronous digital design principles
• Testbench task usage
• Clock-based data synchronization

AUTHOR

Naveen Kumar
Electronics and Communication Engineering
Interested in RTL & Design Verification