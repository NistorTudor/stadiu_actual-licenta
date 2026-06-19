`timescale 1ns / 1ps

module text_editor_fsm(
    input              clk,           // Ceasul sistemului (148MHz)
    input              btnC,          // Butonul fizic de pe placă
    input      [7:0]   current_char,  // Litera selectată din Mixer/Switch-uri
    output reg [4:0]   write_ptr = 0, // Pointer de adresă pentru indexarea spațiului RAM.
    output reg [7:0]   typed_char,    // Litera trimisă efectiv spre RAM
    output reg         we             // 1 = Scrie acum! / 0 = Nu scrie
);

    // Codificarea stărilor (2 biți)
    localparam [1:0] STATE_IDLE         = 2'b00, 
                     STATE_WRITE        = 2'b01, 
                     STATE_WAIT_RELEASE = 2'b10; 

    reg [1:0] curr_state = STATE_IDLE; 
    reg [1:0] next_state = STATE_IDLE; 
    reg       btn_prev;                // Reține starea butonului de la tactul trecut

    // Logica de Edge Detection -detectează DOAR momentul când apeși-
    wire btn_edge = (btnC && !btn_prev); 

    // BLOC 1: Memoria FSM -Actualizare stare la fiecare TIC de ceas
    always @(posedge clk) begin
        btn_prev   <= btnC;
        curr_state <= next_state;
    end

    // BLOC 2: Logica de Tranziție 
    always @(*) begin
        case (curr_state)
            STATE_IDLE: begin
                // Dacă apeși butonul și ai o literă validă -> mergi la WRITE
                if (btn_edge && current_char != 8'h00) next_state = STATE_WRITE;
                else next_state = STATE_IDLE;
            end
            STATE_WRITE: begin
                // După scriere, fugi imediat la WAIT (indiferent de buton)
                next_state = STATE_WAIT_RELEASE;
            end
            STATE_WAIT_RELEASE: begin
                // Stai aici până când degetul părăsește butonul (btnC == 0)
                if (!btnC) next_state = STATE_IDLE;
                else next_state = STATE_WAIT_RELEASE;
            end
           
            default: next_state = STATE_IDLE;
        endcase
    end

    // BLOC 3: Logica de Ieșire 
    always @(posedge clk) begin
        case (next_state)
            STATE_IDLE: begin
                we <= 0; // Nu scriem nimic
            end
            STATE_WRITE: begin
                we         <= 1;            // Activează scrierea în RAM
                typed_char <= current_char; // Trimite litera selectată
                if (write_ptr < 29) write_ptr <= write_ptr + 1; // Mută cursorul la dreapta
            end
            STATE_WAIT_RELEASE: begin
                we <= 0; // Oprește scrierea (s-a terminat impulsul de 1 tact)
            end
            default: we <= 0; // Siguranță pentru starea neutilizată
        endcase
    end

endmodule