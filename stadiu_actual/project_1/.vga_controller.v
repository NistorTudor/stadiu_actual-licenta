`timescale 1ns / 1ps

module vga_controller (
    input           clk_148MHz, // Ceas sistem 148MHz
    input           reset,      // Semnal resetare
    output reg      hsync,      // Sync orizontal monitor
    output reg      vsync,      // Sync vertical monitor
    output [11:0]   pixel_x,    // Coloana pixel monitor
    output [11:0]   pixel_y,    // Rand pixel monitor
    output          video_on    // Activare culoare imagine
);
    parameter HD   = 1920;      // Latime vizibila ecran
    parameter HF   = 88;        // Timp asteptare fata X
    parameter HR   = 44;        // Impuls sync orizontal
    parameter HB   = 148;       // Timp asteptare spate X
    parameter HMAX = 2200;      // Total pixeli pe linie

    parameter VD   = 1080;      // Inaltime vizibila ecran
    parameter VF   = 4;         // Timp asteptare fata Y
    parameter VR   = 5;         // Impuls sync vertical
    parameter VB   = 36;        // Timp asteptare spate Y
    parameter VMAX = 1125;      // Total linii pe cadru

    reg [11:0] h_count = 0;     // Contor pixeli orizontali
    reg [11:0] v_count = 0;     // Contor linii verticale

    // Numarator pixeli orizontala
    always @(posedge clk_148MHz or posedge reset) begin
        if (reset) h_count <= 0;
        else if (h_count == HMAX - 1) h_count <= 0;
        else h_count <= h_count + 1;
    end

    // Numarator linii verticala
    always @(posedge clk_148MHz or posedge reset) begin
        if (reset) v_count <= 0;
        else if (h_count == HMAX - 1) begin
            if (v_count == VMAX - 1) v_count <= 0;
            else v_count <= v_count + 1;
        end
    end

    // Sincronizare monitor
    always @(posedge clk_148MHz) begin
        hsync <= (h_count >= (HD + HF) && h_count < (HD + HF + HR));
        vsync <= (v_count >= (VD + VF) && v_count < (VD + VF + VR));
    end

    assign video_on = (h_count < HD) && (v_count < VD);     // Semnal imagine activa
    assign pixel_x  =                          h_count;     // Contor X legat direct la iesire
    assign pixel_y  =                          v_count;     // Contor Y legat direct la iesire

endmodule