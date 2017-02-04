/*
* _02_PostIt_Clock
* 
* Crea un orologio dove i numeri sono rappresentati da fotografie di cifre realizzate su Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[10];           // Vettore di 10 immagini
String imFile[] = {"0.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"}; 

void setup() {
  size(140, 95);                        // Due numeri da 70x95 pixels
  for (int i = 0; i < 10; i = i + 1) {
    im[i] = loadImage(imFile[i]);  
  }
}

void draw() {
  int h = hour();                       // Prendiamo l'orario del computer e lo salviamo in una variabile
  int h_dec = int(h / 10);              // Otteniamo la cifra più significativa
  int h_uni = h - h_dec * 10;           // Otteniamo la cifra meno significativa
  
  image(im[h_dec], 0, 0);               // Mostriamo la cifra più significativa
  image(im[h_uni], 70, 0);              // mostriamo la cifra meno significativa
}
