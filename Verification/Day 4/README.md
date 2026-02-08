# Day 4 — UVM Transaction (fifo_item) + Random Unit Test (20 runs)

## Objective 
- Make transaction class 'fifo_item'
- Using `rand` / `constraint`, make **stimulus rules**
- With UVM automation macros(`uvm_object_utils_*`, `uvm_field_*`), settiing automation **print/copy/compare** 

---

## 1) Transaction Design

### Field Define
- `is_write` : define write/read transactions
- `data` : sending data when write (stimulus)
- accepted: Indicates whether the operation was actually performed, based on the DUT state (full/empty). (Result field → typically filled in by the monitor.)

- timestamp: The time when the transaction was observed. (Result field → typically set by the monitor using $time.)

Key point: accepted and timestamp are usually not randomized because they are observed results.
It’s more natural to randomize only the stimulus fields like is_write and data.

---

## 2) Stimulus Constraint (Bias)
```systemverilog
constraint wr_bias_c { is_write dist {1:=60, 0:=40}; }
