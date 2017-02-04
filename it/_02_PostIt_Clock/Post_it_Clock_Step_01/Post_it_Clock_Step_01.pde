/*
* _02_PostIt_Clock
* 
* Crea un orologio dove i numeri sono rappresentati da fotografie di cifre realizzate su Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im;

void setup() {
  size(400, 400);               // Realizziamo una schermata le cui dimensioni sono le stesse dell'immagine
  im = loadImage("photo.jpg");  // Nome dell'immagine
}

void draw() {
  image(im, 0, 0);              // Mostriamo l'immagine sulla schermata alle cordinate (0, 0)
}
