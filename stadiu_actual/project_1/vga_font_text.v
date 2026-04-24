`timescale 1ns / 1ps

module vga_font_text(
    input         clk_148MHz, // Ceas citire memorie
    input  [11:0] pixel_x,    // Coordonata X ecran
    input  [11:0] pixel_y,    // Coordonata Y ecran
    input  [7:0]  char_code,  // Cod ASCII primit
    output        text_on     // Comanda desenare pixel litera
);

    wire [5:0]  x_in_char = pixel_x[5:0]; // Extragere coordonata X litera
    wire [5:0]  y_in_char = pixel_y[5:0]; // Extragere coordonata Y litera
    
    // Concatenare biti litera si coordonate pentru adresa finala
    wire [16:0] rom_addr  = {char_code[4:0], y_in_char, x_in_char}; 

    // Instantiere memorie forme litere
    font_rom_ip your_font_rom (
        .clka  (clk_148MHz),
        .addra (rom_addr), 
        .douta (text_on) 
    );

endmodule