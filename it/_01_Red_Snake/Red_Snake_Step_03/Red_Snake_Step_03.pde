/*
* _01_Red_Snake
* 
* Come programmare un oggetto mosso tramite il mouse e che lascia la traccia sullo schermo.
*       
* (c) 2013-2016 Arduino LLC.
*/

int red = 255;
 
void setup() {
  size(400, 400);
}

void draw() {
  noStroke();             
  fill(red, 0, 0);          
  ellipse(mouseX, mouseY, 30, 30); // La posizione del cerchio segue il movimento del mouse
}
