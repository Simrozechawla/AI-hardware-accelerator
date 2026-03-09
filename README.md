# AI-hardware-accelerator
Custom AI-oriented compute architecture in Verilog with a 16-bit CPU, parallel MAC units, and a pipelined accelerator for vector dot-product operations.

# AI Hardware Accelerator (Verilog)

This project implements a simple AI-oriented compute architecture using Verilog and simulated in Xilinx Vivado.

The design demonstrates how specialized hardware accelerators can perform vector operations more efficiently than a sequential CPU.

## Project Overview

The project contains three major components:

1. **Custom 16-bit CPU**
2. **Parallel MAC Accelerator**
3. **Pipelined MAC Unit**

These modules demonstrate the transition from sequential computation to parallel hardware acceleration used in AI systems.

## Architecture

1. Custom CPU
The processor supports basic arithmetic instructions and executes operations sequentially.

Components include:

- ALU (ADD, SUB, MUL, MAC)
- Register File
- Instruction Memory
- Program Counter
- Control Logic

The CPU is capable of executing vector dot-product computations step-by-step.

2. Parallel MAC Accelerator

A hardware accelerator that computes vector dot products using **parallel multiply-accumulate units**.

This reduces computation latency compared to CPU-based execution.

3. Pipelined MAC Unit

A two-stage pipelined MAC architecture demonstrating:

- improved throughput
- hardware parallelism
- reduced latency

## Performance Comparison

| Architecture | Operation | Cycles Required |
|--------------|----------|----------------|
| CPU | Dot Product | ~4 cycles |
| Parallel MAC | Dot Product | 1 cycle |
| Pipelined MAC | Dot Product | 2 cycles |

## Tools Used

- **Verilog HDL**
- **Xilinx Vivado**
- Behavioral Simulation

## Key Concepts Demonstrated

- Digital system design
- Processor architecture
- Hardware acceleration
- Parallel computation
- Pipelining
- Multiply-Accumulate (MAC) operations

## Author
Simroze Chawla  
Electronics & Communication Engineering Undergraduate
