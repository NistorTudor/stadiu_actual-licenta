`timescale 1ns / 1ps

module top (
    input        clk,           // Ceas principal 100MHz
    input        btnU,          // Buton directie sus
    input        btnD,          // Buton directie jos
    input        btnL,          // Buton directie stanga
    input        btnR,          // Buton directie dreapta
    input        btnC,          // Buton confirmare scriere
    output       hsync,         // Semnal sync orizontal
    output       vsync,         // Semnal sync vertical
    output [3:0] vgaRed,        // Canal culoare rosu
    output [3:0] vgaGreen,      // Canal culoare verde
    output [3:0] vgaBlue        // Canal culoare albastru
);

    wire        clk_148MHz;          // Ceas rapid 148.5MHz
    wire [11:0] w_pixel_x;           // Pozitia X curenta monitor
    wire [11:0] w_pixel_y;           // Pozitia Y curenta monitor
    wire        w_video_on;          // Permisiune afisare imagine
    wire        w_text_on;           // Desen pixel litera
    wire [7:0]  w_char_code;         // Cod ASCII litera curenta
    wire [11:0] w_obj_h;             // Coordonata X cerc rosu
    wire [11:0] w_obj_v;             // Coordonata Y cerc rosu
    wire [4:0]  w_write_ptr;         // Pozitie scriere rand sus
    wire [7:0]  w_typed_char;        // Caracter trimis la RAM
    wire        w_we;                // Comanda activare scriere
    wire [7:0]  w_char_under_cursor; // Caracter citit la coordonata de inspectie

    // Instantiere generator ceas
    clk_wiz_0 clock_gen_inst (
        .clk_in1(clk), 
        .clk_out1(clk_148MHz), 
        .reset(1'b0) 
    );

    // Instantiere controller monitor
    vga_controller vga_ctrl_inst (
        .clk_148MHz(clk_148MHz),
        .reset(1'b0), 
        .hsync(hsync), 
        .vsync(vsync),
        .pixel_x(w_pixel_x), 
        .pixel_y(w_pixel_y),
        .video_on(w_video_on)
    );

    // Instantiere logica scriere
    text_editor_fsm fsm_inst (
        .clk(clk_148MHz),
        .btnC(btnC),
        .current_char(w_char_under_cursor), 
        .write_ptr(w_write_ptr),            
        .typed_char(w_typed_char),          
        .we(w_we)                           
    );

    // Instantiere memorie ecran
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

    // Instantiere generator litere
    vga_font_text font_text_inst (
        .clk_148MHz(clk_148MHz),
        .pixel_x(w_pixel_x), 
        .pixel_y(w_pixel_y),
        .char_code(w_char_code),
        .text_on(w_text_on)
    );

    // Instantiere logica butoane
    button_controller btn_ctrl_inst (
        .clk_148MHz(clk_148MHz),
        .btnU(btnU), 
        .btnD(btnD), 
        .btnL(btnL), 
        .btnR(btnR),
        .obj_h(w_obj_h), 
        .obj_v(w_obj_v)  
    );

    // Instantiere motor grafic
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