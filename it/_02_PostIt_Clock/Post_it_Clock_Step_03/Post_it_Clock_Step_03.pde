/*
* _02_PostIt_Clock
* 
* Crea un orologio dove i numeri sono rappresentati da fotografie di cifre realizzate su Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[2];        // Dichiariamo un vettore di due immagini

void setup() {
  size(800, 400)
  im[0] = loadImage("photo.jpg");   // La prima immagine va nella prima posizione del vettore img[]
  im[1] = loadImage("photo2.jpg");  // La seconda immagine va nella seconda posizione dello stesso vettore
}

void draw() {
  image(im[0], 0, 0); 
  image(im[1], 400, 0);  
}
