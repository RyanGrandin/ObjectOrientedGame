class Butterfly {
  
  // declare data
  int pointValue;
  PVector location;
  
  // constructor
  Butterfly() {
    
    // initialise data
    pointValue = 3;
    location = new PVector(width/2, height/4);
    
  }
  
  // display method
  void display() {
    
    noStroke();
    fill(255, 255, 0);
    rectMode(CENTER);
    square(location.x, location.y, 20);
    stroke(255, 255, 0);
    strokeWeight(2);
    line(location.x-10, location.y-10, location.x-40, location.y-10);
    line(location.x-10, location.y-10, location.x-35, location.y-20);
    noStroke();
    circle(location.x-5, location.y-15, 25);
    circle(location.x+15, location.y-5, 25);
    circle(location.x+5, location.y+15, 25);
    circle(location.x-15, location.y+5, 25);
    
  }
  
}
