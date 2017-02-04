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
int nY = 0;  // Coordinata Y del quadrato
int aY = 0;  
int aX = 15;
 
void setup() {
  size(400, 400);  
  nY = height - 25;  // Inizializza le coordinate del quadrato per partire dal fondo dello schermo
}

void draw() {
  background(200);  
  
  aY = aY + 1;  
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20));  
  }
  
  fill(255);  // Di default le figure sono riempite di bianco
  
  // Collision detection
  if (aY + 10 > nY && aY - 10 < nY + 20) {   // Il cerchio si trova alla stessa altezza del quadrato?
    if (aX + 10 > nX && aX - 10 < nX + 20) { // Il cerchio si trova sopra al quadrato?
      fill(255, 0, 0);  					 // Cambia il colore di riempimento da bianco a rosso
    } 
  }

  // Linee per comprendere la collision detection
  // Decommentarle per farle funzionare
  //line(0,aY-10,width,aY-10);
  //line(aX-10,0,aX-10,height);
  //line(0,aY+10,width,aY+10);
  //line(aX+10,0,aX+10,height);
  
  ellipse(aX, aY, 20, 20); 
  rect(nX, nY, 20, 20);    // Utilizziamo pure la variabile Y per controllarne la posizione
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