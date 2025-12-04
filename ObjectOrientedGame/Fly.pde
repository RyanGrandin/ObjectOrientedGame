class Fly {
  
  // declare data
  int pointValue;
  PVector location;
  
  // constructor
  Fly() {
    
    // initialise data
    pointValue = 1;
    location = new PVector(width/4, height/4);
    
  }
  
  // display method
  void display() {
    
    strokeWeight(1);
    stroke(255, 0, 0);
    noFill();
    circle(location.x+5, location.y-5, 10);
    circle(location.x-5, location.y+5, 10);
    noStroke();
    fill(255, 0, 0);
    circle(location.x, location.y, 10);
    
  }
  
}
