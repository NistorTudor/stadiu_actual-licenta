`timescale 1ns / 1ps

module top (
    input        clk,           // Ceas principal 100MHz
    input        btnU,          // Buton direcție sus
    input        btnD,          // Buton direcție jos
    input        btnL,          // Buton direcție stânga
    input        btnR,          // Buton direcție dreapta
    input        btnC,          // Buton confirmare scriere
    output       hsync,         // Semnal sync orizontal
    output       vsync,         // Semnal sync vertical
    output [3:0] vgaRed,        // Canal culoare roșu
    output [3:0] vgaGreen,      // Canal culoare verde
    output [3:0] vgaBlue        // Canal culoare albastru
);

    wire        clk_148MHz;          // Ceas rapid 148.5MHz
    wire [11:0] w_pixel_x;           // Poziția X curentă monitor
    wire [11:0] w_pixel_y;           // Poziția Y curentă monitor
    wire        w_video_on;          // Permisiune afișare imagine
    wire        w_text_on;           // Desen pixel literă
    wire [7:0]  w_char_code;         // Cod ASCII literă curentă
    wire [11:0] w_obj_h;             // Coordonata X cerc roșu
    wire [11:0] w_obj_v;             // Coordonata Y cerc roșu
    wire [4:0]  w_write_ptr;         // Poziție scriere rând sus
    wire [7:0]  w_typed_char;        // Caracter trimis la RAM
    wire        w_we;                // Comandă activare scriere
    wire [7:0]  w_char_under_cursor; // Caracter citit la coordonata de inspecție

    // Instanțiere generator ceas
    clk_wiz_0 clock_gen_inst (
        .clk_in1(clk), 
        .clk_out1(clk_148MHz), 
        .reset(1'b0) 
    );

    // Instanțiere controller monitor
    vga_controller vga_ctrl_inst (
        .clk_148MHz(clk_148MHz),
        .reset(1'b0), 
        .hsync(hsync), 
        .vsync(vsync),
        .pixel_x(w_pixel_x), 
        .pixel_y(w_pixel_y),
        .video_on(w_video_on)
    );

    // Instanțiere logică scriere
    text_editor_fsm fsm_inst (
        .clk(clk_148MHz),
        .btnC(btnC),
        .current_char(w_char_under_cursor), 
        .write_ptr(w_write_ptr),            
        .typed_char(w_typed_char),          
        .we(w_we)                           
    );

    // Instanțiere memorie ecran
    vga_text_ram ram_inst (
        .clk_148MHz(clk_148MHz),
        .pixel_x(w_pixel_x), 
        .pixel_y(w_pixel_y),
        .cursor_x(w_obj_h), 
        .cursor_y(w_obj_v), 
        .we(w_we),
        .write_ptr(w_write_ptr),
        .write_data(w_typed_char),
        .char_code(w_char_code),            
        .char_under_cursor(w_char_under_cursor) 
    );

    // Instanțiere generator litere
    vga_font_text font_text_inst (
        .clk_148MHz(clk_148MHz),
        .pixel_x(w_pixel_x), 
        .pixel_y(w_pixel_y),
        .char_code(w_char_code),
        .text_on(w_text_on)
    );

    // Instanțiere logică butoane
    button_controller btn_ctrl_inst (
        .clk_148MHz(clk_148MHz),
        .btnU(btnU), 
        .btnD(btnD), 
        .btnL(btnL), 
        .btnR(btnR),
        .obj_h(w_obj_h), 
        .obj_v(w_obj_v)  
    );

    // Instanțiere motor grafic
    video_mixer mixer_inst (
        .clk_148MHz(clk_148MHz),
        .video_on(w_video_on), 
        .text_on(w_text_on),
        .char_code(w_char_code),
        .pixel_x(w_pixel_x), 
        .pixel_y(w_pixel_y),
        .obj_h(w_obj_h), 
        .obj_v(w_obj_v),      
        .vgaRed(vgaRed), 
        .vgaGreen(vgaGreen), 
        .vgaBlue(vgaBlue)
    );

endmodule