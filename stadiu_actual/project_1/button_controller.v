`timescale 1ns / 1ps

module button_controller(
    input              clk_148MHz,    // Ceas sistem miscare
    input              btnU,          // Buton miscare sus
    input              btnD,          // Buton miscare jos
    input              btnL,          // Buton miscare stanga
    input              btnR,          // Buton miscare dreapta
    output reg [11:0]  obj_h = 960,   // Pozitie initiala X
    output reg [11:0]  obj_v = 540    // Pozitie initiala Y
);

    localparam HD            = 1920;    // Limita dreapta ecran
    localparam VD            = 1080;    // Limita jos ecran
    localparam R             = 15;      // Raza limita cursor
    localparam STEP          = 2;       // Numar pixeli per pas
    localparam MOVE_INTERVAL = 1000000; // Intarziere miscare

    reg [25:0] move_counter = 0;        // Numarator timp miscare
    
    wire move_tick = (move_counter == MOVE_INTERVAL); // Semnal declansare miscare

    // Numarator timp miscare
    always @(posedge clk_148MHz) begin
        if (move_tick) move_counter <= 0;
        else           move_counter <= move_counter + 1;
    end

    // Modificare pozitie orizontala
    always @(posedge clk_148MHz) begin
        if (move_tick) begin
            if      (btnL && (obj_h > R))      obj_h <= obj_h - STEP;
            else if (btnR && (obj_h < HD - R)) obj_h <= obj_h + STEP;
        end
    end

    // Modificare pozitie verticala
    always @(posedge clk_148MHz) begin
        if (move_tick) begin
            if      (btnU && (obj_v > R))      obj_v <= obj_v - STEP;
            else if (btnD && (obj_v < VD - R)) obj_v <= obj_v + STEP;
        end
    end

endmodule