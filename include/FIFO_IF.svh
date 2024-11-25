`ifndef FIFO_IF_SVH
`define FIFO_IF_SVH

`include "FIFO_PKG.svh"

interface fifo_if;
  
    // --- FIFO Package --- //
    import FIFO_PKG::*;

    // --- Inputs --- //
    logic           w_en;
    logic           r_en;
    logic           flush;
    fifo_entry_t    w_data;

    // --- Outputs --- //
    logic           full;
    logic           empty;
    logic           flushed;
    fifo_entry_t    r_data;

    // --- FIFO Modport --- //
    modport fifo (
        input   w_en,
        input   r_en,
        input   w_data,
        input   flush,
        output  full,
        output  empty,
        output  flushed,
        output  r_data
    );

    // --- UVM Modport --- //
    modport uvm_fifo (
        input   full,
        input   empty,
        input   flushed,
        input   r_data,
        output  w_en,
        output  r_en,
        output  w_data,
        output  flush
    );

endinterface

`endif