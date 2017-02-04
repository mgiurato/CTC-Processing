/*
* _03_Catch_The_Apple
* 
* Creiamo un gioco passo dopo passo, aggiungendo una complessità alla volta.
* Lo scopo è di far collezionare punti a Newton facendosi colpire in testa 
* da più mele possibili in soli 30 secondi.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
int nX = 0;      // Coordinata X, Newton
int nY = 0;      // Coordinata Y, Newton
float aY = 0;    // Coordinata X, mela
int aX = 15;     // Coordinata Y, mela
float aV = 0;    // Velocità lungo Y, mela
float aA = 0.05; // Accelerazione lungo Y, mela
int p = 0;       // Punteggio

void setup() {
  size(400, 400);  
  nY = height - 25; 
}

void draw() {
  background(200);  
  
  // Apple's movement
  aV = aV + aA;  
  aY = aY + aV;  
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20)); 
    aV = 0;   
  }
  
  fill(255);  
  
  // Collision detection
  if (aY + 10 > nY && aY - 10 < nY + 20) {  
    if (aX + 10 > nX && aX - 10 < nX + 20) { 
      fill(255, 0, 0);  
      // Se avviene la collisione allora incrementiamo il punteggio
      p = p + 1;
    } 
  }

  ellipse(aX, aY, 20, 20); 
  rect(nX, nY, 20, 20); 

  // Mostra i punti sullo schermo
  fill(0);  
  text("Hits: " + p, 3 * width / 4, 20); // Il testo è in alto a destra
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