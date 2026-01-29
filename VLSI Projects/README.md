# VLSI Design Projects

This directory contains VLSI-oriented design projects developed as part of graduate-level coursework, with a focus on **layout-aware datapath design, hierarchical integration, and physical verification**.

These projects emphasize how architectural decisions translate into physical implementation constraints in CMOS designs.

---

## Project Scope

- Full-custom CMOS design flow
- Layout-aware RTL and datapath planning
- Hierarchical block integration
- Physical verification using DRC and LVS

---

## Representative Work

### ▸ 8-bit Processor Datapath (Full-Custom VLSI)

- Designed a complete datapath including:
  - Arithmetic Logic Unit (ALU)
  - Shifter
  - SRAM blocks
- Employed hierarchical cell design to improve modularity and reuse
- Integrated power rails and signal routing with layout constraints in mind

---

## Design & Layout Considerations

- **Cell Pitch Alignment:** Ensured consistent cell heights for clean abutment
- **Power Distribution:** Structured VDD/VSS rails for reliable connectivity
- **Signal Integrity:** Routed critical signals with attention to congestion and coupling
- **Hierarchy:** Used well-defined sub-block boundaries to simplify LVS closure

---

## Verification & Validation

- Performed **DRC (Design Rule Check)** to ensure process compliance
- Completed **LVS (Layout vs Schematic)** to verify layout correctness
- Iteratively debugged layout errors related to:
  - Pin mismatches
  - Hierarchical connectivity
  - Power and ground continuity

---

## Engineering Lessons Learned

- Layout constraints must influence architectural decisions early
- Hierarchical design significantly reduces integration complexity
- Physical verification is an iterative debug process, not a one-time step
- Clean schematics lead to faster LVS convergence

---

## Industry Relevance

These projects reflect key aspects of real-world ASIC development, including:
- Layout-driven design tradeoffs
- Block-level integration
- Physical verification and debug
- Collaboration between design and physical implementation flows
