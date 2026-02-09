class fifo_driver extends uvm_driver #(fifo_item);
    fifo_item f_item;
    virtual dut_if vif;

    `uvm_component_utils(fifo_driver)

    function new (string name = "fifo_driver", uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase (uvm_phase phase);
        string inst_name;
        super.build_phase (phase);
            if (!uvm_config_db #(virtual dut_if)::get(this, "", "vif", vif))
            `uvm_fatal ("NOVIF", {"virtual interface must be set for: ", get_full_name(), ".vif"});
    endfunction

    task run_phase (uvm_phase phase);
        vif.is_write <= 0;
        vif.data     <= 0;

        forever begin
            seq_item_port.get_next_item(f_item);
            driver_item(f_item);
            seq_item_port.item_done();
        end
    endtask

    task driver_item (input fifo_item item);
        if (item.is_write) begin
            wait(vif.full == 1'b0);
        end

        @(posedge vif.clk);
        vif.is_write    <= item.is_write;
    //    vif.accepted    <= item.accepted;
        vif.data        <= item.data;
    //    vif.timestamp   <= item.timestamp;

        @(posedge vif.clk);
        vif.is_write    <= 1'b0; //For safeness
    endtask

endclass