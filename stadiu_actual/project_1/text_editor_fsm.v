`timescale 1ns / 1ps

module text_editor_fsm (
    input               clk,          // Ceas sistem 148MHz
    input               btnC,         // Intrare digitală comandă scriere
    input        [7:0]  current_char, // Cod ASCII recepționat din unitatea de selecție
    output reg   [4:0]  write_ptr = 0,// Pointer indexare memorie RAM
    output reg   [7:0]  typed_char,   // Date trimise către magistrala RAM
    output reg          we            // Semnal de validare Write Enable
);

    // Codificarea stărilor FSM utilizând 2 biți
    localparam [1:0] STATE_IDLE         = 2'b00, 
                     STATE_WRITE        = 2'b01, 
                     STATE_WAIT_RELEASE = 2'b10; 

    reg [1:0] curr_state = STATE_IDLE; 
    reg [1:0] next_state = STATE_IDLE; 
    reg       btn_prev;               // Registru pentru starea anterioară a butonului

    // Logica de detecție a frontului crescător pentru comanda de scriere
    wire btn_edge = (btnC && !btn_prev); 

    // BLOC 1: Registru de stare – actualizare sincronă la frontul activ al ceasului
    always @(posedge clk) begin
        btn_prev   <= btnC;
        curr_state <= next_state;
    end

    // BLOC 2: Logica combinațională pentru tranzițiile de stare
    always @(*) begin
        case (curr_state)
            STATE_IDLE: begin
                // Tranziție către scriere doar dacă butonul este acționat și caracterul este valid
                if (btn_edge && current_char != 8'h00) next_state = STATE_WRITE;
                else next_state = STATE_IDLE;
            end
            STATE_WRITE: begin
                // Tranziție necondiționată către starea de așteptare după operația de scriere
                next_state = STATE_WAIT_RELEASE;
            end
            STATE_WAIT_RELEASE: begin
                // Blocare în starea curentă până la eliberarea butonului pentru a preveni scrierile multiple
                if (!btnC) next_state = STATE_IDLE;
                else next_state = STATE_WAIT_RELEASE;
            end
            
            default: next_state = STATE_IDLE;
        endcase
    end

    // BLOC 3: Logica de ieșire – acțiuni asociate tranzițiilor de stare
    always @(posedge clk) begin
        case (next_state)
            STATE_IDLE: begin
                we <= 0; // Dezactivare scriere în starea de repaus
            end
            STATE_WRITE: begin
                we         <= 1;            // Validare operație de scriere
                typed_char <= current_char; // Transferul caracterului către magistrala de date
                if (write_ptr < 29) write_ptr <= write_ptr + 1; // Incrementare pointer adrese
            end
            STATE_WAIT_RELEASE: begin
                we <= 0; // Dezactivare scriere după finalizarea tactului activ
            end
            default: we <= 0; 
        endcase
    end

endmodule