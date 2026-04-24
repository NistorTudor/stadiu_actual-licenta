`timescale 1ns / 1ps

module tb_top_rom();

    // Intrari (le controlam noi)
    reg clk = 0;
    reg reset = 0;

    // Iesiri (le observam)
    wire hsync, vsync;
    wire [3:0] vgaRed, vgaGreen, vgaBlue;

    // Instantiem TOP-ul tau modular
    top dut (
        .clk(clk),
        .reset(reset),
        .hsync(hsync),
        .vsync(vsync),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue)
    );

    // Generam ceasul de 100MHz (perioada 10ns)
    always #5 clk = ~clk;

    initial begin
        // Reset initial
        reset = 1;
        #100;
        reset = 0;

        // Asteptam 1.5ms (sau cat ai vazut tu ca ii ia ceasului sa porneasca)
        // Daca vrei sa vezi ceva rapid, poti sa dai zoom in dupa primele 5 microsecunde
        #100000; 

        $display("Simulare in curs... Verifica semnalul vgaGreen!");
        
        // Lasam sa ruleze un pic sa vedem cum se schimba pixelii
        #500000000;
        
        $stop;
    end

endmodule