/*
* _02_PostIt_Clock
* 
* Crea un orologio dove i numeri sono rappresentati da fotografie di cifre realizzate su Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[2]; 
String imFile[] = {"photo.jpg", "photo2.jpg"};  // Vettore con i nomi delle immagini

void setup() {
  size(800, 400);   
  im[0] = loadImage(imFile[0]);                 // Usiamo 'loadImage()' per caricare la prima immagine
  im[1] = loadImage(imFile[1]);                 // Facciamo lo stesso per la seconda immagine
}

void draw() {
  image(im[0], 0, 0); 
  image(im[1], 400, 0);  
}
