`include "../include/FIFO_IF.svh"
`include "../include/FIFO_PKG.svh"

module fifo (
    input logic clk,
    input logic n_rst,
    fifo_if     fifoIF
);

    // --- FIFO Package --- //
    import FIFO_PKG::*;    
    
    // --- Logic --- //
    // TODO:

    // --- Registers --- //
    always_ff @(posedge clk or negedge n_rst) begin : FIFO_REG
        if (~n_rst) begin
            // --- FIFO Outputs --- //
            fifoIF.full     <= '0;
            fifoIF.empty    <= '1;
            fifoIF.flushed  <= '0;
            fifoIF.r_data   <= '0;
            // --- Internal --- //
            fifo            <= ;
            w_ptr           <= '0;
            r_ptr           <= '0;
        end else begin

        end
    end

    // --- Comb Logic --- //
    always_comb begin : FIFO_COMB
        if (fifoIF.flush) begin
            
        end 
    end



endmodule