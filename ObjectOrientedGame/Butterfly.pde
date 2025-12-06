class Butterfly {
  
  // declare data
  int pointValue;
  float web1XMin;
  float web1XMax;
  float web1YMin;
  float web1YMax;
  PVector location;
  
  // constructor
  Butterfly(float tempWeb1XMin, float tempWeb1XMax, float tempWeb1YMin, 
  float tempWeb1YMax) {
    
    // initialise data
    pointValue = 3;
    web1XMin = tempWeb1XMin;
    web1XMax = tempWeb1XMax;
    web1YMin = tempWeb1YMin;
    web1YMax = tempWeb1YMax;
    location = new PVector(random(web1XMin, web1XMax), random(web1YMin, 
    web1YMax));
    
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
