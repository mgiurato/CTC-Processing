/*
* _01_Red_Snake
* 
* Come programmare un oggetto mosso tramite il mouse e che lascia la traccia sullo schermo.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
void setup() {
  size(400, 400);
}

void draw() {
  noStroke();                // Disegna una forma senza contorni
  fill(255, 0, 0);           // Riempie la forma con solo il colore rosso
  ellipse(100, 100, 30, 30); // Disegna un cerchio con diametro di 30 pixels
}
