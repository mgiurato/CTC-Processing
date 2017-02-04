/*
* _02_PostIt_Clock
* 
* Crea un orologio dove i numeri sono rappresentati da fotografie di cifre realizzate su Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im;
PImage im2;

void setup() {
  size(800, 400);                   // Realizziamo una schermata larga il doppio rispetto all'immagine
  im = loadImage("photo.jpg");  
  im2 = loadImage("photo2.jpg");    // Carichiamo la seconda immagine
}

void draw() {
  image(im, 0, 0); 
  image(im2, 400, 0);               // Mostriamo la seconda immagine alle cordinate (400, 0)
}
