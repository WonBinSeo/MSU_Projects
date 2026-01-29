# CNN Acceleration on Xilinx Alveo FPGA

This project implements a CNN acceleration workflow on a **Xilinx Alveo FPGA**, with a focus on **resource-aware mapping of computation kernels** and functional validation using Python-based testbenches.

The work emphasizes practical FPGA acceleration concerns rather than theoretical model design.

---

## Project Overview

- Implemented CNN computation kernels on a Xilinx Alveo accelerator card
- Focused on mapping compute-intensive operations under FPGA resource constraints
- Used Vivado for synthesis, implementation, and debugging
- Validated functionality using Python-based testbenches
- Delivered weekly technical presentations documenting design progress and trade-offs

---

## Technical Focus

- FPGA-based acceleration of CNN workloads
- Resource-aware kernel mapping (compute vs resource trade-offs)
- Functional validation of FPGA acceleration workflows
- Iterative design refinement based on synthesis and debug feedback

---

## Target Platform

- **FPGA:** Xilinx Alveo Accelerator Card
- **Toolchain:** Vivado Design Suite, Vitis tool
- **Host-side Validation:** Python-based testbench

---

## Design Approach

- Identified key CNN computation kernels suitable for FPGA acceleration
- Structured RTL to align with FPGA resource availability
- Iteratively refined kernel implementation based on synthesis feedback
- Prioritized functional correctness and debuggability

---

## Functional Validation

- Developed Python-based testbenches to validate accelerator behavior
- Compared FPGA outputs against expected software results
- Used simulation results as a reference during Vivado-based debugging
- Ensured functional consistency across design iterations

---

## Debugging & Tool Usage

- Supported functional validation and debugging using Vivado
- Analyzed synthesis and implementation reports to guide design decisions
- Investigated functional mismatches between expected and observed results
- Refined RTL based on debug findings

---

## Weekly Technical Presentations

- Prepared and presented weekly PPTs documenting:
  - Design decisions and architectural changes
  - Resource utilization considerations
  - Functional validation results
  - Open issues and next-step plans

These presentations helped structure the project as an **iterative engineering process**, similar to industry design reviews.

---

## Engineering Lessons Learned

- FPGA acceleration requires balancing performance goals with resource constraints
- Early validation simplifies later debugging efforts
- Python-based testbenches are effective for rapid functional verification
- Regular design reviews improve clarity and implementation quality

---

## Industry Relevance

This project reflects real-world FPGA acceleration workflows, including:
- Accelerator-focused kernel implementation
- Resource-aware design trade-offs
- Tool-driven debug and validation
- Cross-layer interaction between host-side software and FPGA logic
