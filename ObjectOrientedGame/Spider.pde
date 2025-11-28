class Spider {
  
  // declare data
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  // constructor
  Spider() {
    
    //initialise data
    location = new PVector();
    velocity = new PVector();
    acceleration = new PVector();
    
  }
  
  // display function
  void display() {
    
    // string
    stroke(0);
    line(width/2, 0, mouseX, mouseY);
    
    // legs
    
    
    // body
    noStroke();
    fill(0);
    circle(mouseX, mouseY, 20);
    
  }
  
}
