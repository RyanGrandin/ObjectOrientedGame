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
Webs webs;
Spider spider;

// setup function
void setup() {
  
  size(800, 600);
  
  webs = new Webs();
  spider = new Spider();
  
}

// draw function
void draw() {
  
  background(255);
  
  webs.display();
  spider.display();
  spider.move();
  
}
