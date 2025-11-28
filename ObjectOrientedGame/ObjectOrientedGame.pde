/*
File Auther(s): Ryan Grandin (he/him)
Assignment: Object Oriented Game
Course: GAME12805 Programming for Game Designers 1: Fundamentals
Instructor: Kit Barry (he/him)
Organisation: Sheridan College Institute of Technology and Advanced Learning
*/

/*
Instructions for Play:


*/

// declare global variables
Spider spider;

// setup function
void setup() {
  
  size(400, 400);
  
  spider = new Spider();
  
}

// draw function
void draw() {
  
  background(255);
  
  spider.display();
  
}
