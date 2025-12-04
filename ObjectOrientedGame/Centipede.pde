class Centipede {
  
  // declare data
  int pointValue;
  PVector location;
  
  // constructor
  Centipede() {
    
    // initialise data
    pointValue = 5;
    location = new PVector(width/4*3, height/4);
    
  }
  
  // display method
  void display() {
    
    // legs
    pushMatrix();
    translate(location.x, location.y);
    rotate(PI/12);
    stroke(0, 0, 255);
    strokeWeight(2);
    line(-20, -35, 20, -35);
    line(-20, -25, 20, -25);
    line(-20, -15, 20, -15);
    line(-20, -5, 20, -5);
    line(-20, 5, 20, 5);
    line(-20, 15, 20, 15);
    line(-20, 25, 20, 25);
    line(-20, 35, 20, 35);
    
    // body
    noStroke();
    fill(0, 0, 255);
    circle(0, 35, 20);
    rectMode(CENTER);
    rect(0, 0, 20, 70);
    circle(0, -35, 20);
    popMatrix();
    
  }
  
}
