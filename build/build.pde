

void setup() {
	size(2988,5312);
	PImage foto = loadImage("media/fondo.jpg");
	int tamanyo = width*height;
	int factorX = 36;
	int factorY = 32;
	int nPoints = factorX*factorY;

	int distX = width/factorX;
	int distY = height/factorY;

	int x = 0;
	int y = 0;

	noStroke();

	foto.loadPixels();

	beginShape(TRIANGLE_FAN);

	for (int i = 0; i < factorX; i++) {
		for (int j = 0; j < factorY; j++) {

			x = distX*i;
			y = distY*j;

			int loc = x + (y * width);
			fill(foto.pixels[loc]);
			vertex(x,y);

		}
	}

	endShape();
}


void draw() {
	
}