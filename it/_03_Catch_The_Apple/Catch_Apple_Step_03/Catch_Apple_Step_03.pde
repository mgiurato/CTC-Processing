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
 
void setup() {
  size(400, 400);  
}

void draw() {
  background(200);  
  ellipse(15, 15, 20, 20);  
  rect(nX, height - 25, 20, 20);  
}

void keyPressed() {
  // Incrementa le coordinate di 3 unità
  if (keyCode == RIGHT) {
    nX = nX + 3;
  }
  // Decrementa le coordinate di 3 unità
  if (keyCode == LEFT) {
    nX = nX - 3;
  }
  // Limita il valore delle coordinate X
  if (nX < 0) {
    nX = 0;
  }
  // Controlla la dimensone del quadrato sul lato destro
  if (nX > width - 20) {
    nX = width - 20;
  }
}
