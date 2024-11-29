`ifndef FIFO_PKG_SVH
`define FIFO_PKG_SVH

package fifo_pkg;
    
    parameter DATA_WIDTH = 32;
    parameter ENTRIES    = 4;

    typedef logic [DATA_WIDTH-1:0] fifo_entry_t;

endpackage

`endif