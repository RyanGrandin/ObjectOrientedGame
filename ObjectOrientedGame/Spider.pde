class Spider {
  
  // declare data
  
  
  // constructor
  Spider() {
    
    //initialise data
    
    
  }
  
  // display function
  void display() {
    
    stroke(0);
    line(width/2, 0, mouseX, mouseY);
    noStroke();
    fill(0);
    circle(mouseX, mouseY, 20);
    
  }
  
}
