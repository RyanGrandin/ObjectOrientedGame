class LossScreen {
  
  // declare data variables
  Spider spider;
  PVector spiderStartLocation;
  
  // constructor
  LossScreen() {
    
    spiderStartLocation = new PVector(0, 0);
    spider = new Spider(spiderStartLocation);
    
  }
  
  // display method
  void display() {
    
    noStroke();
    
    // background
    fill(255, 0, 0);
    rect(width/2, height/2, width, height);
    
    // spider
    pushMatrix();
    translate(width/2-125, height/4+75);
    rotate(PI/-8*2);
    spider.displaySpider();
    popMatrix();
    
    // body and head)
    fill(0);
    quad(width/2, height/4-75, width, 150, width, 500, width/2, height/4+75);
    circle(width/2, height/4, 150);
    
    // beak
    rectMode(CENTER);
    rect(width/2-75, height/4+25, 100, 25);
    triangle(width/2-125, height/4+12.5, width/2-125, height/4+37.5, 
    width/2-150, height/4+50);
    triangle(width/2-75, height/4+37.5, width/2-50, height/4+37.5, 
    width/2-75, height/4+87.5);
    
    // eye
    fill(255);
    circle(width/2, height/4, 25);
    
  }
  
}
