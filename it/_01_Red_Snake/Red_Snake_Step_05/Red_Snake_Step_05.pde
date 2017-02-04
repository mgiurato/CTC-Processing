/*
* _01_Red_Snake
* 
* Come programmare un oggetto mosso tramite il mouse e che lascia la traccia sullo schermo.
*       
* (c) 2013-2016 Arduino LLC.
*/

int red = 255;
int time = 0;
 
void setup() {
  size(400, 400);
}

void draw() {
  time = time + 1;                                             // Incrementa la variabile tempo di un'unità
  red = int(128 * (1 + sin(time * 2 * PI / frameRate / 20)));  // Cambia il colore rosso con una periodicità di 20 secondi.
  
  noStroke();             
  fill(red, 0, 0);          
  ellipse(mouseX, mouseY, 30, 30); 
}
