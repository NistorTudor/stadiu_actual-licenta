`timescale 1ns / 1ps

module button_controller (
    input                 clk_148MHz,    // Semnal de ceas pentru divizorul de frecvență
    input                 btnU,          // Intrare digitală deplasare axa Y Nord
    input                 btnD,          // Intrare digitală deplasare axa Y Sud
    input                 btnL,          // Intrare digitală deplasare axa X Vest
    input                 btnR,          // Intrare digitală deplasare axa X Est
    output reg [11:0]     obj_h = 960,   // Coordonată spațială X inițializată central
    output reg [11:0]     obj_v = 540    // Coordonată spațială Y inițializată central
);

    // Parametrii sistemului cinematic și constrângerile spațiale
    localparam HD            = 1920;      // Rezoluție orizontală și limită coliziune X
    localparam VD            = 1080;      // Rezoluție verticală și limită coliziune Y
    localparam R             = 15;        // Raza cursorului pentru offset margini
    localparam STEP          = 2;         // Rezoluție de deplasare pixeli per iterație
    localparam MOVE_INTERVAL = 1000000;   // Factor de divizare a frecvenței

    reg [25:0] move_counter = 0;          // Registru contor pentru temporizare

    // Generarea impulsului de validare a mișcării
    wire move_tick = (move_counter == MOVE_INTERVAL);

    // Logica divizorului de ceas pentru încetinirea mișcării la nivel vizual
    always @(posedge clk_148MHz) begin
        if (move_tick) move_counter <= 0;
        else           move_counter <= move_counter + 1;
    end

    // Actualizare cinematică pe axa X cu detecție de coliziuni hardware
    always @(posedge clk_148MHz) begin
        if (move_tick) begin
            if      (btnL && (obj_h > R))      obj_h <= obj_h - STEP;
            else if (btnR && (obj_h < HD - R)) obj_h <= obj_h + STEP;
        end
    end

    // Actualizare cinematică pe axa Y cu detecție de coliziuni hardware
    always @(posedge clk_148MHz) begin
        if (move_tick) begin
            if      (btnU && (obj_v > R))      obj_v <= obj_v - STEP;
            else if (btnD && (obj_v < VD - R)) obj_v <= obj_v + STEP;
        end
    end

endmodule