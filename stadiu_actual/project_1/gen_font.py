from PIL import Image, ImageFont, ImageDraw

# Configurație de Inginer
CHARS = " QWERTYUIOPASDFGHJKLZXCVBNM" # Index: 0=Space, 1=T, 2=U, 3=D, 4=O, 5=R
FONT_FILE = "UTSans-Regular.ttf" # Pune-l în același folder!
OUTPUT_FILE = "font_1bit.coe"
GRID_SIZE = 64 

try:
    font = ImageFont.truetype(FONT_FILE, 56) 
except:
    print("N-am găsit UTSans, pun Arial ca să nu crape...")
    font = ImageFont.truetype("arial.ttf", 56)

with open(OUTPUT_FILE, "w") as f:
    f.write("memory_initialization_radix=2;\n")
    f.write("memory_initialization_vector=\n")
    
    for i, char in enumerate(CHARS):
        img = Image.new('1', (GRID_SIZE, GRID_SIZE), color=0)
        draw = ImageDraw.Draw(img)
        
        # Centrare perfectă folosind Bounding Box
        bbox = draw.textbbox((0, 0), char, font=font)
        w, h = bbox[2] - bbox[0], bbox[3] - bbox[1]
        draw.text(((GRID_SIZE - w)//2 - bbox[0], (GRID_SIZE - h)//2 - bbox[1]), char, font=font, fill=1)
        
        # Generăm pixel cu pixel (Serial)
        for y in range(GRID_SIZE):
            for x in range(GRID_SIZE):
                pixel = img.getpixel((x, y))
                # Verificăm dacă e chiar ultimul bit din tot fișierul
                is_last = (i == len(CHARS)-1 and y == GRID_SIZE-1 and x == GRID_SIZE-1)
                f.write(str(pixel) + (";" if is_last else ",\n"))

print(f"Succes! S-au generat {len(CHARS)*4096} pixeli în {OUTPUT_FILE}.")