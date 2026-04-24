`timescale 1ns / 1ps

module vga_text_ram(
    input              clk_148MHz,         // Ceas management memorie
    input      [11:0]  pixel_x,            // X monitor pentru citire
    input      [11:0]  pixel_y,            // Y monitor pentru citire
    input      [11:0]  cursor_x,           // X cerc pentru inspectie
    input      [11:0]  cursor_y,           // Y cerc pentru inspectie
    input              we,                 // Permisiune scriere caracter
    input      [4:0]   write_ptr,          // Pozitia scrierii pe ecran
    input      [7:0]   write_data,         // Cod ASCII de salvat
    output     [7:0]   char_under_cursor,  // Cod ASCII citit la inspectie
    output reg [7:0]   char_code           // Cod ASCII catre Font ROM
);

    wire [5:0] vga_col       = pixel_x[11:6];            // Impartire X monitor la 64
    wire [5:0] vga_row       = pixel_y[11:6];            // Impartire Y monitor la 64
    wire [9:0] vga_read_addr = (vga_row * 30) + vga_col; // Adresa monitor in memorie

    wire [5:0] s_col         = cursor_x[11:6];           // Impartire X cerc la 64
    wire [5:0] s_row         = cursor_y[11:6];           // Impartire Y cerc la 64
    wire [9:0] sonda_addr    = (s_row * 30) + s_col;     // Adresa inspectie in memorie

    wire [9:0] final_addr_a  = we ? {5'd0, write_ptr} : sonda_addr; // Selectie adresa Port A

    wire [7:0] dout_internal_b; // Valoare citita din memorie

    // Instantiere True Dual-Port RAM
    blk_mem_gen_0 your_ram_inst (
        // Port A dedicat pentru FSM Scriere si Inspectie
        .clka   (clk_148MHz),      
        .ena    (1'b1),              // Activare permanenta port A
        .wea    (we),                // Comanda selectie scriere
        .addra  (final_addr_a),      // Adresa multiplexata scriere sau inspectie
        .dina   (write_data),        // Caracter trimis pentru salvare
        .douta  (char_under_cursor), // Caracter citit de sub cerc
        
        // Port B dedicat pentru afisare continua Monitor
        .clkb   (clk_148MHz),        
        .enb    (1'b1),              // Activare permanenta port B
        .web    (1'b0),              // Scriere dezactivata pe port B
        .addrb  (vga_read_addr),     // Adresa ceruta de monitor
        .dinb   (8'd0),              // Intrare date legata la masa
        .doutb  (dout_internal_b)    // Caracter scos spre afisare
    );

    // Salvare iesire memorie
    always @(posedge clk_148MHz) begin
        char_code <= dout_internal_b; 
    end

endmodule