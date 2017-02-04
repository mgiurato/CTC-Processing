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
int nY = 0; 
float aY = 0;  
int aX = 15;
float aV = 0;     // Velocità iniziale della mela
float aA = 0.05;  // Accelerazione della mela (0.98 sarebbe troppo)
 
void setup() {
  size(400, 400);  
  nY = height - 25; 
}

void draw() {
  background(200);  
  
  // Apple's movement
  aV = aV + aA;  // Incrementiamo la velocità in accordo con l'accelerazione
  aY = aY + aV;  // Incrementiamo la posizione in accordo con la velocità
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20)); 
    aV = 0;  // La mela comincia a cadere a velocità nulla
  }
  
  fill(255);  
  
  // Collision detection
  if (aY + 10 > nY && aY - 10 < nY + 20) {  
    if (aX + 10 > nX && aX - 10 < nX + 20) { 
      fill(255, 0, 0);  
    } 
  }

  ellipse(aX, aY, 20, 20); 
  rect(nX, nY, 20, 20);    
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