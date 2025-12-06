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
Bugs bugs;
Spider spider;
LossScreen lossScreen;
WinScreen winScreen;
PVector spiderStartLocation;
int danger;
int score;
boolean play;
int secElapsed;

// setup function
void setup() {
  
  size(800, 600);
  
  webs = new Webs();
  bugs = new Bugs(webs.spawnRegion1MinX, webs.spawnRegion1MaxX, 
  webs.spawnRegion1MinY, webs.spawnRegion1MaxY);
  spiderStartLocation = new PVector(width/2, height/2);
  spider = new Spider(spiderStartLocation);
  lossScreen = new LossScreen();
  winScreen = new WinScreen();
  danger = 0;
  score = 0;
  play = true;
  
  secElapsed = 0;
  
}

// draw function
void draw() {
  
  if (play == true) {
    
    background(255);
    webs.display();
    bugs.spawn(secElapsed);
    bugs.display();
    spider.displayString();
    spider.displaySpider();
    spider.move();
    
    for (int i = 0; i < bugs.flies.size(); i++) {
      
      Fly fly = bugs.flies.get(i);
      if (spider.location.x > fly.location.x-25 && spider.location.x < 
      fly.location.x+25 && spider.location.y > fly.location.y-25 && 
      spider.location.y < fly.location.y+25) {
        
        bugs.flies.remove(i);
        
      }
      
    }
    
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
  
  if (frameCount % 60 == 0) {
    
    secElapsed++;
    
  }
  
}
