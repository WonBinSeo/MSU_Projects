# Day 5 — UVM Driver & Sequencer Skeleton (FIFO)

## Goal (What I’m learning today)
Build the **minimum UVM skeleton** for:
- **Sequencer → Driver → DUT** stimulus flow
- Understand the **basic handshake** between sequencer and driver:
  `get_next_item()` → *drive* → `item_done()` :contentReference[oaicite:2]{index=2}

This matches the User Guide Day 5 target: “driver/sequencer basic interaction + TB skeleton direction.” :contentReference[oaicite:3]{index=3}

---

## What I read (UVM 1.2 User Guide)
- 3.3 Creating the Driver (Guide p34 / PDF p40)
- 3.4 Creating the Sequencer (Guide p35 / PDF p41)
- 3.5 Connecting Driver and Sequencer (Guide p35 / PDF p41)
- 3.5.1 Basic Sequencer and Driver Interaction (Guide p36 / PDF p42) :contentReference[oaicite:4]{index=4}

---

## Deliverables (Today’s outputs)
- `fifo_driver.sv` : driver skeleton with basic handshake + minimal DUT driving
- `fifo_sequencer.sv` : sequencer skeleton (mostly “empty” by design)

---

## Key ideas I implemented

### 1) Driver gets transaction from sequencer (handshake)
In `run_phase`:
- `seq_item_port.get_next_item(f_item);`  // blocks until item exists
- `driver_item(f_item);`                  // drive signals into DUT
- `seq_item_port.item_done();`            // tell sequencer the item is consumed :contentReference[oaicite:5]{index=5}

### 2) Virtual interface wiring (config_db)
Driver declares:
- `virtual dut_if vif;`

and fetches it in `build_phase` using `uvm_config_db::get`.
If not found, driver stops with `uvm_fatal`. :contentReference[oaicite:6]{index=6}

### 3) Minimal FIFO-safe driving (first pass)
Inside `driver_item()`:
- If write, wait until FIFO is not full: `wait(vif.full == 0);`
- Drive `is_write` + `data` for 1 cycle
- Clear `is_write` next cycle for safety

> Note: This is intentionally minimal. In later days I’ll add:
> - proper reset behavior
> - read path
> - timing/valid handshake rules
> - monitor/scoreboard

---

## Notes / Fixes to apply next
### Sequencer class type
Sequencer should extend `uvm_sequencer`, not `uvm_sequence`.

✅ Correct:
```systemverilog
class fifo_sequencer extends uvm_sequencer #(fifo_item);
