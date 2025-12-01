class Spider {
  
  // declare data
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector mouseLocation;
  
  // constructor
  Spider() {
    
    //initialise data
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mouseLocation = new PVector(width/2, height/2);
    
  }
  
  // display method
  void display() {
    
    // string
    stroke(0);
    line(width/2, 0, location.x, location.y);
    
    // legs
    
    
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
    velocity.limit(10);
    
  }
  
}
