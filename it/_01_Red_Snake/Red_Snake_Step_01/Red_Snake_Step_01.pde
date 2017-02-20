/*
* _01_Red_Snake
* 
* Come programmare un oggetto mosso tramite il mouse e che lascia una traccia sullo schermo.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
void setup() {
  size(400, 400);
}

void draw() {
  noStroke();                // La forma che sto per disegnare non avrà contorni
  fill(255, 0, 0);           // La forma che sto per disegnare sarà rossa
  ellipse(100, 100, 30, 30); // disegna una forma (cerchio) con diametro 30 pixels
}