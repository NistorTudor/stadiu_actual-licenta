from PIL import Image, ImageFont, ImageDraw

# Parametrii de configurare a matricelor grafice
CHARS = " QWERTYUIOPASDFGHJKLZXCVBNM" # Index mapare: 0=Spațiu, 1=Q, 2=W, 3=E, 4=R, etc.
FONT_FILE = "UTSans-Regular.ttf"    # Sursa tipografică necesită prezența în directorul curent
OUTPUT_FILE = "font_1bit.coe"       # Fișierul de inițializare pentru memoria Block ROM Vivado
GRID_SIZE = 64                      # Rezoluția ferestrei de afișare per caracter 64x64 pixeli

# Bloc de inițializare a fontului cu mecanism de protecție fallback
try:
    font = ImageFont.truetype(FONT_FILE, 56) 
except:
    print("Avertisment: Fontul UTSans nu a fost găsit. Se utilizează fontul Arial pentru a asigura execuția.")
    font = ImageFont.truetype("arial.ttf", 56)

# Generarea fișierului formatat conform standardului Xilinx COE
with open(OUTPUT_FILE, "w") as f:
    # Scrierea antetului obligatoriu pentru definirea bazei de numerație binară
    f.write("memory_initialization_radix=2;\n")
    f.write("memory_initialization_vector=\n")
    
    # Procesarea iterativă a fiecărui caracter din setul predefinit
    for i, char in enumerate(CHARS):
        # Inițializarea unei imagini binare 1-bit cu fundal inactiv 0 logic
        img = Image.new('1', (GRID_SIZE, GRID_SIZE), color=0)
        draw = ImageDraw.Draw(img)
        
        # Calculul casetei de încadrare Bounding Box pentru centrarea precisă a glifei
        bbox = draw.textbbox((0, 0), char, font=font)
        w, h = bbox[2] - bbox[0], bbox[3] - bbox[1]
        
        # Randarea caracterului fix în centrul grilei de 64x64 pixeli activat în 1 logic
        draw.text(((GRID_SIZE - w)//2 - bbox[0], (GRID_SIZE - h)//2 - bbox[1]), char, font=font, fill=1)
        
        # Serializarea matricei grafice 2D într-un vector de date 1D prin rasterizare
        for y in range(GRID_SIZE):
            for x in range(GRID_SIZE):
                pixel = img.getpixel((x, y))
                
                # Logica de formatare a separatorului conform sintaxei stricte Xilinx COE
                # Ultimul bit trebuie urmat de punct și virgulă, iar restul de virgulă
                is_last = (i == len(CHARS)-1 and y == GRID_SIZE-1 and x == GRID_SIZE-1)
                f.write(str(pixel) + (";" if is_last else ",\n"))

# Validarea finalizării procesului
print(f"Sinteză completă! S-au serializat {len(CHARS)*4096} pixeli în fișierul {OUTPUT_FILE}.")