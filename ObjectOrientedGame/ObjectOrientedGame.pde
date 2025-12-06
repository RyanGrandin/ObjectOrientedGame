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
Fly fly;
Butterfly butterfly;
Centipede centipede;
Spider spider;
LossScreen lossScreen;
WinScreen winScreen;
PVector spiderStartLocation;
int danger;
int score;
boolean play;

// setup function
void setup() {
  
  size(800, 600);
  
  webs = new Webs();
  fly = new Fly();
  butterfly = new Butterfly();
  centipede = new Centipede();
  spiderStartLocation = new PVector(width/2, height/2);
  spider = new Spider(spiderStartLocation);
  lossScreen = new LossScreen();
  winScreen = new WinScreen();
  danger = 0;
  score = 0;
  play = true;
  
}

// draw function
void draw() {
  
  if (play == true) {
    
    background(255);
    webs.display();
    fly.display();
    butterfly.display();
    centipede.display();
    spider.displayString();
    spider.displaySpider();
    spider.move();
    
    if (danger >= 100) {
      
      play = false;
      background(255, 0, 0);
      lossScreen.display();
      
    }
    
    if (score >= 100) {
      
      play = false;
      background(0, 225, 0);
      winScreen.display();
      
    }
    
  }
  
}
