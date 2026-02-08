class fifo_item extends uvm_sequence_item;
    rand bit                is_write; 
    bit                     accepted;
    rand logic [3:0]        data;
    time                    timestamp;

    constraint is_write_c { is_write dist {1:=60, 0:=40}; } //stimulus constraint

    `uvm_object_utils_begin (fifo_item) //uvm macro
        `uvm_field_int(is_write,    UVM_ALL_ON)
        `uvm_field_int(accepted,    UVM_ALL_ON)
        `uvm_field_int(data,        UVM_ALL_ON)
        `uvm_field_int(timestamp,   UVM_ALL_ON)
    `uvm_object_utils_end

    function new(string name = "fifo_item");
        super.new(name);
    endfunction

endclass
