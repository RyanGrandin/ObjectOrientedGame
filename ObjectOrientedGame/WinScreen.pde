class WinScreen {
  
  // declare data variables
  Spider spider;
  PVector spiderStartLocation;
  
  // constructor
  WinScreen() {
    
    spiderStartLocation = new PVector(0, 0);
    spider = new Spider(spiderStartLocation);
    
  }
  
  // display method
  void display() {
    
    strokeWeight(3);
    stroke(0);
    line(50, 0, width/4*3, height/4*3);
    
    // spider
    pushMatrix();
    translate(width/4*3, height/4*3);
    scale(6.0);
    rotate(PI/-8*2);
    spider.displaySpider();
    popMatrix();
    
  }
  
}
