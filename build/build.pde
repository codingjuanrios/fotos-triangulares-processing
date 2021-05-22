//VAR TIEMPO
int second = second();  // Values from 0 - 59
int minute = minute();  // Values from 0 - 59
int hour = hour();    // Values from 0 - 23
int day = day();    // Values from 1 - 31
int month = month();  // Values from 1 - 12
int year = year();   // 2003, 2004, 2005, etc.

String timestamp = str(year)+str(month)+str(day)+str(hour)+str(minute)+str(second);
PImage foto;

int tamanyo;
int factorX = 36;
int factorY = 32;
int nPoints = factorX*factorY;

int distX;
int distY;

int x = 0;
int y = 0;
int column = 0;

int loc = 0;


void setup() {
	size(512,512);
	// size(2988,5312);
	foto = loadImage("media/fondo.jpg");
	tamanyo = width*height;
	// int factorX = 36;
	// int factorY = 32;
	// int nPoints = factorX*factorY;

	distX = width/factorX;
	distY = height/factorY;

	// int x = 0;
	// int y = 0;

	// int loc = 0;

	noStroke();

	foto.loadPixels();

	// for (int i = 0; i < width; i++) {
	// 	x = i;
	// 	y = int(random(height));

	// 	loc = x + (y * width);
	// 	fill(foto.pixels[loc]);

	// 	rect(x, 0, 1, height);
	// }


	// noFill();
	// strokeWeight(2);
	// // beginShape(TRIANGLES);
	// beginShape(TRIANGLE_FAN);

	// for (int i = 0; i < factorX; i++) {
	// 	for (int j = 0; j < factorY; j++) {

	// 		x = distX*i;
	// 		y = distY*j;

	// 		loc = x + (y * width);
	// 		// fill(foto.pixels[loc]);
	// 		stroke(foto.pixels[loc]);
	// 		vertex(x,y);

	// 	}
	// }

	// endShape();


	// saveFrame("C:/users/escri/Pictures/Processing/Triangulos/screenshot/triangulos"+timestamp+".jpg");
}


void draw() {


	//ELEGIR UN PUNTO AL AZAR, COGER SU COLOR Y DIBUJAR UN CIRCULO
	x = int(random(width));
	y = int(random(height));

	loc = x + (y * width);

	fill(foto.pixels[loc]);

	circle(x,y,25);


	// // DIBUJAR DOS LINEAS VERTICALES ESCOGIENDO UN COLOR DE ESA SECCION Y COLUMNA AL AZAR
	// // DIBUJAR CUATRO CUADRANTES CON LAS LINEAS ALTERNANDO
	// if (frameCount%60 == 0) {

	// 	for (int i = 0; i < width; i++) {

	// 		x = i;

	// 		if (x < width/2) {
	// 			column = int(random(height/2));

	// 			loc = x + (column * width);
	// 			fill(foto.pixels[loc]);

	// 			rect(x, 0, 1, height/2);

	// 			column = column + height/2;

	// 			loc = x + (column * width);
	// 			fill(foto.pixels[loc]);

	// 			rect(0, x + height/2, width/2, 1);
	// 		} else {
	// 			column = int(random(height/2));

	// 			loc = x + (column * width);
	// 			fill(foto.pixels[loc]);

	// 			rect(width/2, x - height/2, width/2, 1);

	// 			column = column + height/2;

	// 			loc = x + (column * width);
	// 			fill(foto.pixels[loc]);

	// 			rect(x, height/2, 1, height/2);
	// 		}
	// 	}
	// }

	// // DIBUJAR UNA LINEA VERTICAL ESCOGIENDO UN COLOR DE ESA COLUMNA AL AZAR
	// if (frameCount%60 == 0) {

	// 	for (int i = 0; i < width; i++) {
	// 		x = i;
	// 		y = int(random(height));

	// 		loc = x + (y * width);
	// 		fill(foto.pixels[loc]);

	// 		rect(x, 0, 1, height);
	// 	}
	// }


}