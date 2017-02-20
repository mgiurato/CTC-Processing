/*
* _02_PostIt_Clock
* 
* Crea un orologio dove i numeri sono rappresentati da fotografie di cifre realizzate su Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[4];        // Rendiamo il vettore più grande, in modo da contenere quattro immagini
String imFile[] = {"one.jpg", "two.jpg", "three.jpg", "four.jpg"}; 

void setup() {
  size(800, 800);                   // Rendiamo la schermata più grande in modo da ospitare quattro immagini
  for (int i = 0; i < 4; i = i + 1) {
    im[i] = loadImage(imFile[i]);   // Carichiamo l'immagine corrispondente all'indice 'i'
  }
}

void draw() {
  image(im[0], 0, 0);               // Mostriamo le immagini
  image(im[1], 400, 0);  
  image(im[2], 0, 400);  
  image(im[3], 400, 400);  
}