/*
* _02_PostIt_Clock
* 
* Crea un orologio dove i numeri sono rappresentati da fotografie di cifre realizzate su Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[10];       // Vettore per 10 immagini
String imFile[] = {"0.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"}; 

void setup() {
  size(140, 285);                   // 6 numeri in una matrice di 3 righe e due colonne   
  for (int i = 0; i < 10; i = i + 1) {
    im[i] = loadImage(imFile[i]);  
  }
}

void draw() {
  int h = hour();             
  int h_dec = int(h / 10);    
  int h_uni = h - h_dec * 10; 
  
  image(im[h_dec], 0, 0);     
  image(im[h_uni], 70, 0);    
  
  int m = minute();                 // Prendiamo i minuti del computer e li salviamo in una variabile
  int m_dec = int(m / 10);          // Otteniamo la cifra più significativa
  int m_uni = m - m_dec * 10;       // Otteniamo la cifra meno significativa
  
  image(im[m_dec], 0, 95);          // Mostriamo la cifra più significativa
  image(im[m_uni], 70, 95);         // mostriamo la cifra meno significativa
  
  int s = second();                 // Prendiamo i secondi del computer e li salviamo in una variabile
  int s_dec = int(s / 10);          // Otteniamo la cifra più significativa
  int s_uni = s - s_dec * 10;       // Otteniamo la cifra meno significativa
  
  image(im[s_dec], 0, 190);         // Mostriamo la cifra più significativa
  image(im[s_uni], 70, 190);        // mostriamo la cifra meno significativa
}
