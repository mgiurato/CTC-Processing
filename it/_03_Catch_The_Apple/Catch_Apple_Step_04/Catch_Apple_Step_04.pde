/*
* _03_Catch_The_Apple
* 
* Creiamo un gioco passo dopo passo, aggiungendo una complessità alla volta.
* Lo scopo è di far collezionare punti a Newton facendosi colpire in testa 
* da più mele possibili in soli 30 secondi.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
int nX = 0;
int aY = 0;  //Coordinata Y della mela
 
void setup() {
  size(400, 400);  
}

void draw() {
  background(200);  
  
  aY = aY + 1;  // Incrementa la coordinata Y della mela
  if (aY > height) {
    aY = 15;    // Se la mela tocca il pavimento, allora la si riporta in alto
  }
  ellipse(15, aY, 20, 20);   // La coordinata Y è stata usata come variabile
  rect(nX, height - 25, 20, 20);  
}

void keyPressed() {
  // Incrementa la posizione di 3 pixels
  if (keyCode == RIGHT) {
    nX = nX + 3;
  }
  // Decrementa la posizione di 3 pixels
  if (keyCode == LEFT) {
    nX = nX - 3;
  }
  // Limita la coordinata X
  if (nX < 0) {
    nX = 0;
  }
  if (nX > width - 20) {  
    nX = width - 20;
  }
}