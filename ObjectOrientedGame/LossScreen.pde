class LossScreen {
  
  // constructor
  LossScreen() {
    
    
    
  }
  
  // display method
  void display() {
    
    noStroke();
    fill(0);
    quad(width/2, height/4-75, width, 150, width, 500, width/2, height/4+75);
    circle(width/2, height/4, 150);
    rectMode(CENTER);
    rect(width/2-75, height/4+25, 100, 25);
    triangle(width/2-125, height/4+12.5, width/2-125, height/4+37.5, width/2-150, height/4+50);
    triangle(width/2-75, height/4+37.5, width/2-50, height/4+37.5, width/2-75, height/4+87.5);
    
  }
  
}
