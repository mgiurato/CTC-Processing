/*
* _03_Catch_The_Apple
* 
* Creiamo un gioco passo dopo passo, aggiungendo una complessità alla volta.
* Lo scopo è di far collezionare punti a Newton facendosi colpire in testa 
* da più mele possibili in soli 30 secondi.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
void setup() {
  size(400, 400);                       // Creiamo una schermata sufficientemente grande
}

void draw() {
  ellipse(15, 15, 20, 20);              // Disegniamo una mela nella parte alta della schermata
  rect(width / 2, height - 25, 20, 20); // Disegniamo Newton in basso alla schermata
}
