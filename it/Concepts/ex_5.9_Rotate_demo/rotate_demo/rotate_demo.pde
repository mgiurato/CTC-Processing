/*
*  _5.9_rotate_demo
* 
* In questo esempio ti viene mostrato come utilizzare il metodo "rotate"
* 
* (c) 2013-2016 Arduino LLC.
*/

fill(0);
rect(20, 20, 20, 20);  //black rectangle
fill(100);
rotate(radians(45));
translate(20, 20); 
rect(0, 0, 20, 20);  //grey rectangle
