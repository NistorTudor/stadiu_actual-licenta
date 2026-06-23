`timescale 1ns / 1ps

module vga_controller (
    input           clk_148MHz, // Semnal de ceas sistem 148.5 MHz
    input           reset,      // Reset asincron global
    output reg      hsync,      // Semnal de sincronizare orizontală
    output reg      vsync,      // Semnal de sincronizare verticală
    output [11:0]   pixel_x,    // Coordonată orizontală curentă scanare
    output [11:0]   pixel_y,    // Coordonată verticală curentă scanare
    output          video_on    // Validare zonă activă de afișare Blanking control
);
    // Parametri temporali orizontali Sincronizare linie
    parameter HD   = 1920;      // Rezoluție orizontală activă
    parameter HF   = 88;        // Front Porch orizontal
    parameter HR   = 44;        // Lățime impuls de sincronizare orizontală
    parameter HB   = 148;       // Back Porch orizontal
    parameter HMAX = 2200;      // Perioadă totală a unei linii de scanare

    // Parametri temporali verticali Sincronizare cadru
    parameter VD   = 1080;      // Rezoluție verticală activă linii vizibile
    parameter VF   = 4;         // Front Porch vertical
    parameter VR   = 5;         // Lățime impuls de sincronizare verticală
    parameter VB   = 36;        // Back Porch vertical
    parameter VMAX = 1125;      // Perioadă totală a unui cadru video

    reg [11:0] h_count = 0;     // Contor de baleiaj orizontal
    reg [11:0] v_count = 0;     // Contor de baleiaj vertical

    // Logica de baleiaj orizontal Incrementare per pixel
    always @(posedge clk_148MHz or posedge reset) begin
        if (reset) h_count <= 0;
        else if (h_count == HMAX - 1) h_count <= 0;
        else h_count <= h_count + 1;
    end

    // Logica de baleiaj vertical Incrementare per linie completată
    always @(posedge clk_148MHz or posedge reset) begin
        if (reset) v_count <= 0;
        else if (h_count == HMAX - 1) begin
            if (v_count == VMAX - 1) v_count <= 0;
            else v_count <= v_count + 1;
        end
    end

    // Generarea semnalelor de sincronizare Sync Pulses
    always @(posedge clk_148MHz) begin
        hsync <= (h_count >= (HD + HF) && h_count < (HD + HF + HR));
        vsync <= (v_count >= (VD + VF) && v_count < (VD + VF + VR));
    end

    // Validarea zonei vizibile Active Video Region
    assign video_on = (h_count < HD) && (v_count < VD);     // Semnal activ doar în interiorul rezoluției 1080p
    assign pixel_x  =                          h_count;     // Mapare directă a coordonatei X la ieșire
    assign pixel_y  =                          v_count;     // Mapare directă a coordonatei Y la ieșire

endmodule