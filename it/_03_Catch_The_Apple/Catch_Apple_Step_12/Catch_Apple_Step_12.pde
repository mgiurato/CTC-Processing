/*
* _03_Catch_The_Apple
* 
* Creiamo un gioco passo dopo passo, aggiungendo una complessità alla volta.
* Lo scopo è di far collezionare punti a Newton facendosi colpire in testa 
* da più mele possibili in soli 30 secondi.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
String[] imFiles = {"fondo.png", "manzana.png", "newton1.png", "newton2.png"};
PImage[] im = new PImage[4];
 
int nX = 0;      // Coordinata X, Newton
int nY = 0;      // Coordinata Y, Newton
float aY = 0;    // Coordinata X, mela
int aX = 15;     // Coordinata Y, mela
float aV = 0;    // Velocità lungo Y, mela
float aA = 0.05; // Accelerazione lungo Y, mela
int p = 0;       // Punteggio
boolean pCount = true;  // Serve per identificare se è avvenuta la collisione
long t = 0;      // Variabile per contare il tempo

void setup() {
  size(400, 400);  
  nY = height - 135; 
  t = millis();  
  
  // Load the images
  for(int i = 0; i < 4; i = i + 1) {
    im[i] = loadImage(imFiles[i]);
  }
}

void draw() {
  background(200);
  image(im[0], 0, 0, width, height);  // Immagine di sfondo
  
  // Movimento della mela
  aV = aV + aA;  
  aY = aY + aV;  
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20)); 
    aV = 0;   
    // Quando viene lasciata cadere una mela 
    // possiamo ripartire con il conteggio dei punti
    pCount = true;  
  }
  
  fill(255);  
  
  // Collision detection
  if (aY + 10 > nY && aY - 10 < nY + 20) {  
    if (aX + 10 > nX && aX - 10 < nX + 20) { 
      fill(255, 0, 0);  
      // Se avviene la collisione allora incrementiamo il punteggio
      if (pCount) p = p + 1;
      pCount = false;  // Se avviene, a questo punto non conteggiamo più
    } 
  }

  image(im[1], aX, aY);  // Mela
  if(pCount) {
    image(im[2], nX, nY);  // Newton che cerca di prendere la mela
  } else {
    image(im[3], nX, nY);  // Newton che ha preso la mela
  } 
  
  // Conteggio del tempo
  float timer = (millis() - t) / 1000;  // Conta quanto tempo è trascorso, in secondi

  // GAME OVER
  if (timer >= 30) {  // Se il tempo raggiunge i 30s, allora si ferma il gioco
    noLoop();
  }

  // Mostra il tempo sullo schermo
  fill(0);
  textSize(20);  // Incrementa la dimensione del font
  text("Time: " + (30 - timer), 10, 20);

  // Mostra i punti sullo schermo
  fill(0);  
  textSize(20);  // Incrementa la dimensione del font
  text("Hits: " + p, 3 * width / 4, 20); 
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