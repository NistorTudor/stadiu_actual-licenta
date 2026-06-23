`timescale 1ns / 1ps

module vga_font_text (
    input          clk_148MHz, // Semnal de ceas sistem
    input   [11:0] pixel_x,    // Coordonată orizontală pixel ecran
    input   [11:0] pixel_y,    // Coordonată verticală pixel ecran
    input   [7:0]  char_code,  // Cod ASCII al caracterului selectat
    output         text_on     // Semnal validare pixel activ pentru font
);

    // Extragerea offset-ului local în interiorul matricei de 64x64 pixeli
    wire [5:0] x_in_char = pixel_x[5:0]; 
    wire [5:0] y_in_char = pixel_y[5:0]; 
    
    // Concatenarea adresei fizice pentru accesarea memoriei Block ROM
    // Structură adresă: [cod caracter 5 biți][coordonată Y 6 biți][coordonată X 6 biți]
    wire [16:0] rom_addr = {char_code[4:0], y_in_char, x_in_char}; 

    // Instanțiere IP core Block ROM pentru stocarea matricelor bitmap
    font_rom_ip your_font_rom (
        .clka  (clk_148MHz),
        .addra (rom_addr), 
        .douta (text_on) 
    );

endmodule