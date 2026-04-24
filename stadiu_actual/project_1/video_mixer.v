`timescale 1ns / 1ps

module video_mixer(
    input              clk_148MHz,    // Ceas procesare culori
    input              video_on,      // Semnal ecran activ
    input              text_on,       // Semnal pixel desenat
    input      [7:0]   char_code,     // Cod ASCII caracter
    input      [11:0]  pixel_x,       // X furnizat de controller
    input      [11:0]  pixel_y,       // Y furnizat de controller
    input      [11:0]  obj_h,         // X furnizat de butoane
    input      [11:0]  obj_v,         // Y furnizat de butoane
    output reg [3:0]   vgaRed,        // Iesire canal rosu
    output reg [3:0]   vgaGreen,      // Iesire canal verde
    output reg [3:0]   vgaBlue        // Iesire canal albastru
);

    reg [11:0] px_d1;                 // Primul etaj delay X
    reg [11:0] px_d2;                 // Al doilea etaj delay X
    reg [11:0] py_d1;                 // Primul etaj delay Y
    reg [11:0] py_d2;                 // Al doilea etaj delay Y

    // Sincronizare coordonate cu RAM
    always @(posedge clk_148MHz) begin
        px_d1 <= pixel_x; 
        px_d2 <= px_d1;
        py_d1 <= pixel_y; 
        py_d2 <= py_d1;
    end

    wire [5:0]  local_x         = px_d2[5:0];            // Coordonata X in tasta
    wire [5:0]  local_y         = py_d2[5:0];            // Coordonata Y in tasta
    wire [5:0]  grid_x          = px_d2[11:6];           // Coloana tastei afisate
    wire [5:0]  grid_y          = py_d2[11:6];           // Randul tastei afisate
    wire [5:0]  cursor_grid_x   = obj_h[11:6];           // Coloana cercului
    wire [5:0]  cursor_grid_y   = obj_v[11:6];           // Randul cercului

    wire is_border   = (local_x == 0 || local_x == 63 || local_y == 0 || local_y == 63); // Verificare margine tasta
    wire is_selected = (grid_x == cursor_grid_x) && (grid_y == cursor_grid_y);         // Verificare suprapunere cerc
    wire valid_key   = (char_code != 0);                 // Verificare caracter valid

    wire signed [12:0] dx = $signed(px_d2) - $signed(obj_h); // Distanta X fata de cerc
    wire signed [12:0] dy = $signed(py_d2) - $signed(obj_v); // Distanta Y fata de cerc
    wire is_circle = (dx*dx + dy*dy < 100);              // Verificare interior cerc

    // Selectare culoare finala
    always @(*) begin
        if (!video_on) begin
            {vgaRed, vgaGreen, vgaBlue} = 12'h000; // Negru in afara imaginii
        end 
        else if (py_d2 < 64) begin
            if (text_on && char_code != 0) {vgaRed, vgaGreen, vgaBlue} = 12'hFFF; // Text alb sus
            else {vgaRed, vgaGreen, vgaBlue} = 12'h000; // Fundal negru sus
        end
        else if (valid_key) begin
            if (text_on) {vgaRed, vgaGreen, vgaBlue} = 12'h0F0; // Litere verzi taste
            else if (is_selected) begin
                if (is_border) {vgaRed, vgaGreen, vgaBlue} = 12'hFFF; // Margine alba selectie
                else {vgaRed, vgaGreen, vgaBlue} = 12'h04A; // Fundal albastru selectie
            end 
            else if (is_border) {vgaRed, vgaGreen, vgaBlue} = 12'h08F; // Margine taste normale
            else {vgaRed, vgaGreen, vgaBlue} = 12'h111; // Interior gri taste
        end 
        else begin
            if (is_circle) {vgaRed, vgaGreen, vgaBlue} = 12'hF00; // Culoare cerc rosu
            else {vgaRed, vgaGreen, vgaBlue} = 12'h000; // Fundal negru general
        end
    end
endmodule