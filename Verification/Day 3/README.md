📅 Day 3: Transaction Design (Deliverable)
1. Overview
   - Transaction Name: fifo_item
   - Base Class: uvm_sequence_item
   - Objective: To encapsulate 'real-time events' made by the Monitor from the DUT interface and pass them to the Scoreboard
  
2. Field Definition
   | Field Name | Type | Description|
   |------------|------|---------------------------|
   | is_write | bit | Check wirte & read operation, 1: write 0: read|
   | accepted | bit | **Handshake Success**: write: (write_enable && !full) read: (read_enable && !empty) |
   | data | logic [WIDTH-1:0] | The actual transmitted data (Valid only when accepted is high) |
   |timestamp | time | Simulation time to debugging ($time) |

3. Generation & Sampling Timing
   - Sampling: When **posedge clk**
   - Valid Condition: When **rstn == 0** and **accepted** condition is met
  
