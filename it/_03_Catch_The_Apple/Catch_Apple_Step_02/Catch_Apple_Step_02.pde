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
  size(400, 400);                   // Creiamo una schermata sufficientemente grande
}

void draw() {
  background(200);                  // Puliamo lo sfondo della schermata
  ellipse(15, 15, 20, 20);  
  rect(nX, height - 25, 20, 20);    // Disegniamo Newton con una posizione X variabile
}

void keyPressed() {
  // Se viene premuto il pulsante destro, allora incrementa di 3 unità la cordinata X
  if (keyCode == RIGHT) {
    nX = nX + 3;
  }
  // Se viene premuto il pulsante sinistro, allora decrementa di 3 unità la cordinata X
  if (keyCode == LEFT) {
    nX = nX - 3;
  }
}
