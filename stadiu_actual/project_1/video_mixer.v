`timescale 1ns / 1ps

module video_mixer (
    input               clk_148MHz,    // Semnal de ceas sistem
    input               video_on,      // Validare zonă activă de afișare
    input               text_on,       // Semnal validare pixel font
    input        [7:0]  char_code,     // Cod ASCII caracter
    input        [11:0] pixel_x,       // Coordonată X din controller VGA
    input        [11:0] pixel_y,       // Coordonată Y din controller VGA
    input        [11:0] obj_h,         // Coordonată X cursor
    input        [11:0] obj_v,         // Coordonată Y cursor
    output reg   [3:0]  vgaRed,        // Canal ieșire culoare roșu
    output reg   [3:0]  vgaGreen,      // Canal ieșire culoare verde
    output reg   [3:0]  vgaBlue        // Canal ieșire culoare albastru
);

    // Registre pentru alinierea temporală a coordonatelor cu latența memoriei
    reg [11:0] px_d1, px_d2; 
    reg [11:0] py_d1, py_d2; 

    // Pipelining pentru sincronizarea coordonatelor cu datele citite din ROM
    always @(posedge clk_148MHz) begin
        px_d1 <= pixel_x; 
        px_d2 <= px_d1;
        py_d1 <= pixel_y; 
        py_d2 <= py_d1;
    end

    // Decodificarea grilei spațiale și poziționarea locală a elementelor
    wire [5:0] local_x       = px_d2[5:0];           // Offset X în interiorul celulei
    wire [5:0] local_y       = py_d2[5:0];           // Offset Y în interiorul celulei
    wire [5:0] grid_x        = px_d2[11:6];          // Index coloană în grila de taste
    wire [5:0] grid_y        = py_d2[11:6];          // Index rând în grila de taste
    wire [5:0] cursor_grid_x = obj_h[11:6];          // Index coloană cursor
    wire [5:0] cursor_grid_y = obj_v[11:6];          // Index rând cursor

    // Logica de calcul pentru elementele grafice
    wire is_border   = (local_x == 0 || local_x == 63 || local_y == 0 || local_y == 63);
    wire is_selected = (grid_x == cursor_grid_x) && (grid_y == cursor_grid_y);
    wire valid_key   = (char_code != 0);

    // Calculul distanței euclidiene pentru reprezentarea cercului
    wire signed [12:0] dx = $signed(px_d2) - $signed(obj_h);
    wire signed [12:0] dy = $signed(py_d2) - $signed(obj_v);
    wire is_circle = (dx*dx + dy*dy < 100);

    // Logica de mixare video cu ierarhie de priorități (Layering)
    always @(*) begin
        if (!video_on) begin
            {vgaRed, vgaGreen, vgaBlue} = 12'h000; // Stingere semnal în afara zonei active
        end 
        else if (py_d2 < 64) begin
            if (text_on && char_code != 0) {vgaRed, vgaGreen, vgaBlue} = 12'hFFF; // Text editat
            else {vgaRed, vgaGreen, vgaBlue} = 12'h000;                           // Fundal negru
        end
        else if (valid_key) begin
            if (text_on) {vgaRed, vgaGreen, vgaBlue} = 12'h0F0;                   // Culoare font taste
            else if (is_selected) begin
                if (is_border) {vgaRed, vgaGreen, vgaBlue} = 12'hFFF;             // Contur selecție
                else {vgaRed, vgaGreen, vgaBlue} = 12'h04A;                       // Fundal selecție
            end 
            else if (is_border) {vgaRed, vgaGreen, vgaBlue} = 12'h08F;            // Contur tastă
            else {vgaRed, vgaGreen, vgaBlue} = 12'h111;                           // Interior tastă
        end 
        else begin
            if (is_circle) {vgaRed, vgaGreen, vgaBlue} = 12'hF00;                 // Cursor activ
            else {vgaRed, vgaGreen, vgaBlue} = 12'h000;                           // Fundal general
        end
    end
endmodule