`timescale 1ns / 1ps

module vga_text_ram (
    input               clk_148MHz,         // Semnal de ceas sistem
    input        [11:0] pixel_x,            // Coordonată X monitor pentru citire
    input        [11:0] pixel_y,            // Coordonată Y monitor pentru citire
    input        [11:0] cursor_x,           // Coordonată X cursor pentru inspecție
    input        [11:0] cursor_y,           // Coordonată Y cursor pentru inspecție
    input               we,                 // Semnal validare scriere
    input        [4:0]  write_ptr,          // Pointer adrese pentru scriere
    input        [7:0]  write_data,         // Cod ASCII transmis pentru stocare
    output       [7:0]  char_under_cursor,  // Cod ASCII detectat sub cursor
    output reg   [7:0]  char_code           // Cod ASCII extras pentru unitatea ROM
);

    // Calculul adreselor bazat pe decuparea grilei de 64x64 pixeli
    wire [5:0] vga_col        = pixel_x[11:6];            
    wire [5:0] vga_row        = pixel_y[11:6];            
    wire [9:0] vga_read_addr  = (vga_row * 30) + vga_col; 

    wire [5:0] s_col          = cursor_x[11:6];           
    wire [5:0] s_row          = cursor_y[11:6];           
    wire [9:0] sonda_addr     = (s_row * 30) + s_col;     

    // Multiplexarea adreselor pentru Portul A: scriere sau inspecție poziție cursor
    wire [9:0] final_addr_a   = we ? {5'd0, write_ptr} : sonda_addr; 

    wire [7:0] dout_internal_b; // Magistrală internă citire date

    // Instanțiere IP Core True Dual-Port Block RAM
    blk_mem_gen_0 your_ram_inst (
        // Port A: dedicat unității de control și inspecției poziției cursorului
        .clka   (clk_148MHz),      
        .ena    (1'b1),            
        .wea    (we),              
        .addra  (final_addr_a),    
        .dina   (write_data),      
        .douta  (char_under_cursor),
        
        // Port B: dedicat afișării continue a buffer-ului video către ecran
        .clkb   (clk_148MHz),        
        .enb    (1'b1),            
        .web    (1'b0),            
        .addrb  (vga_read_addr),   
        .dinb   (8'd0),            
        .doutb  (dout_internal_b)  
    );

    // Registru de pipeline pentru alinierea temporală a datelor citite
    always @(posedge clk_148MHz) begin
        char_code <= dout_internal_b; 
    end

endmodule