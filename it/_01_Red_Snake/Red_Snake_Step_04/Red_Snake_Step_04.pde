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
  red = red - 1;               // Rende il rosso lievemente più scuro
  if (red < 0){
    red = 255;                 // Una volta che ha raggiunto il colore nero si resetta di nuovo il colore sul rosso
  }
  
  noStroke();             
  fill(red, 0, 0);          
  ellipse(mouseX, mouseY, 30, 30); 
}
