class Centipede {
  
  // declare data
  int pointValue;
  float web1XMin;
  float web1XMax;
  float web1YMin;
  float web1YMax;
  PVector location;
  
  // constructor
  Centipede(float tempWeb1XMin, float tempWeb1XMax, float tempWeb1YMin, 
  float tempWeb1YMax) {
    
    // initialise data
    pointValue = 5;
    web1XMin = tempWeb1XMin;
    web1XMax = tempWeb1XMax;
    web1YMin = tempWeb1YMin;
    web1YMax = tempWeb1YMax;
    location = new PVector(random(web1XMin, web1XMax), random(web1YMin, 
    web1YMax));
    
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
