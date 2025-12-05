class Spider {
  
  // declare data
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector mouseLocation;
  
  // constructor
  Spider(PVector startLocation) {
    
    //initialise data
    location = new PVector();
    location.set(startLocation);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mouseLocation = new PVector(width/2, height/2);
    
  }
  
  // method to display string
  void displayString() {
    
    strokeWeight(1);
    stroke(0);
    line(width/2, 0, location.x, location.y);
    
  }
  
  // method to display spider
  void displaySpider() {
    
    // legs
    strokeWeight(1);
    stroke(0);
    
    line(location.x - 15, location.y - 10, location.x + 15, location.y - 10);
    line(location.x - 15, location.y - 10, location.x - 25, location.y - 5);
    line(location.x + 15, location.y - 10, location.x + 25, location.y - 5);
    
    line(location.x - 15, location.y - 5, location.x + 15, location.y - 5);
    line(location.x - 15, location.y - 5, location.x - 25, location.y);
    line(location.x + 15, location.y - 5, location.x + 25, location.y);
    
    
    line(location.x - 15, location.y, location.x + 15, location.y);
    line(location.x - 15, location.y, location.x - 25, location.y + 5);
    line(location.x + 15, location.y, location.x + 25, location.y + 5);
    
    
    line(location.x - 15, location.y + 5, location.x + 15, location.y + 5);
    line(location.x - 15, location.y + 5, location.x - 25, location.y + 10);
    line(location.x + 15, location.y + 5, location.x + 25, location.y + 10);
    
    
    // body
    noStroke();
    fill(0);
    circle(location.x, location.y, 20);
    
  }
  
  // move method
  void move() {
    
    mouseLocation.set(mouseX, mouseY);
    mouseLocation.sub(location);
    mouseLocation.setMag(2.5);
    acceleration = mouseLocation;
    
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(15);
    
  }
  
}
