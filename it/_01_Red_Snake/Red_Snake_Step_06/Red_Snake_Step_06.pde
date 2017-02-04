/*
* _01_Red_Snake
* 
* Come programmare un oggetto mosso tramite il mouse e che lascia la traccia sullo schermo.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
int red = 255;
int time = 0;
int diameter = 50;
 
void setup() {
  size(400, 400);
}

void draw() {
  time = time + 1;     
  red = int(128 * (1 + sin(time * 2 * PI / frameRate / 20))); 
  diameter = int(50 * (1 + sin( time * 2 * PI / frameRate / 5))); // Cambia il diametro del cerchio secondo una legge sinusoidale.
  
  noStroke();             
  fill(red, 0, 0, 50);                                            // Aggiunge una trasparenza del 50% sul colore del cerchio.
  ellipse(mouseX, mouseY, diameter, diameter); 
}
