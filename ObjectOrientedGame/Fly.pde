class Fly {
  
  // declare data
  int pointValue;
  float web1XMin;
  float web1XMax;
  float web1YMin;
  float web1YMax;
  PVector location;
  
  // constructor
  Fly(float tempWeb1XMin, float tempWeb1XMax, float tempWeb1YMin, 
  float tempWeb1YMax) {
    
    // initialise data
    pointValue = 1;
    web1XMin = tempWeb1XMin;
    web1XMax = tempWeb1XMax;
    web1YMin = tempWeb1YMin;
    web1YMax = tempWeb1YMax;
    location = new PVector(random(web1XMin, web1XMax), random(web1YMin, 
    web1YMax));
    
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
