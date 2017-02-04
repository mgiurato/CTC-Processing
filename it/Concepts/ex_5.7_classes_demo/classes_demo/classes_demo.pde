/*
*  _5.7_classes_demo
* 
* In questo esempio ti verrà presentato come si possono utilizzare le classi e gli oggetti nel codice.
* Come puoi vedere, in questo esempio ci sono due schede relative alla definizione delle classi degli animali
* e una dove creiamo degli oggetti e chiamiamo le funzioni corrispondenti alle classi.
* La scheda dove dove avvengono le azioni è quella che d'ora in poi chiameremo "main"
*
* (c) 2013-2016 Arduino LLC.
*/

Bird myBird;
Rabbit myRabbit;

void setup() {
  myBird = new Bird(true);
  myRabbit = new Rabbit(false);
}

void draw() {
  myBird.flapWings();
  myRabbit.eatCarrot();
}