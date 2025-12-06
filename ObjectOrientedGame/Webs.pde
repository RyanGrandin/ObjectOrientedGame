class Webs {
  
  float spawnRegion1MinX;
  float spawnRegion1MaxX;
  float spawnRegion1MinY;
  float spawnRegion1MaxY;
  
  float spawnRegion2MinX;
  float spawnRegion2MaxX;
  float spawnRegion2MinY;
  float spawnRegion2MaxY;
  
  float spawnRegion3MinX;
  float spawnRegion3MaxX;
  float spawnRegion3MinY;
  float spawnRegion3MaxY;
  
  // constructor
  Webs() {
    
    /*spawnRegion1MinX = 0;
    spawnRegion1MaxX = 40;
    spawnRegion1MinY = 0;
    spawnRegion1MaxY = 70;*/
    
    spawnRegion1MinX = 0;
    spawnRegion1MaxX = width;
    spawnRegion1MinY = 0;
    spawnRegion1MaxY = height/2;
    
    spawnRegion2MinX = width-140;
    spawnRegion2MaxX = 0;
    spawnRegion2MinY = 0;
    spawnRegion2MaxY = 120;
    
    spawnRegion3MinX = width/2-80;
    spawnRegion3MaxX = width/2+10;
    spawnRegion3MinY = height/2-50;
    spawnRegion3MaxY = height/2+30;
    
  }
  
  // display method
  void display() {
    
    strokeWeight(1);
    stroke(0);
    
    // left web, outer ring
    line(20, 0, 40, 20);
    line(40, 20, 20, 60);
    line(20, 60, 0, 70);
    
    // left web, inner ring
    line(0, 0, 15, 20);
    line(15, 20, 5, 45);
    line(5, 45, -20, 60);
    
    // left web, radial strings
    line(40, 20, 0, 20);
    line(20, 60, 0, 40);
    
    // right web, outer ring
    line(width-130, 0, width-140, 80);
    line(width-140, 80, width-40, 120);
    line(width-40, 120, width, 100);
    
    // righ web, middle ring
    line(width-40, 0, width-80, 10);
    line(width-80, 10, width-80, 55);
    line(width-80, 55, width-40, 70);
    line(width-40, 70, width, 50);
    
    // right web, inner ring
    line(width-35, 20, width-25, 35);
    line(width-25, 35, width-40, 45);
    line(width-40, 45, width-50, 40);
    line(width-50, 40, width-50, 25);
    line(width-50, 25, width-35, 20);
    
    // right web, radial strings
    line(width-25, 0, width-35, 20);
    line(width, 40, width-25, 35);
    line(width-40, 120, width-40, 45);
    line(width-140, 80, width-50, 40);
    line(width-100, 0, width-50, 25);
    
    // middle web, outer ring
    line(width/2-40, height/2-50, width/2+10, height/2-30);
    line(width/2+10, height/2-30, width/2+10, height/2+10);
    line(width/2+10, height/2+10, width/2-60, height/2+30);
    line(width/2-60, height/2+30, width/2-80, height/2-30);
    line(width/2-80, height/2-30, width/2-40, height/2-50);
    
    // middle web, inner ring
    line(width/2-40, height/2-30, width/2-20, height/2-20);
    line(width/2-20, height/2-20, width/2-20, height/2-10);
    line(width/2-20, height/2-10, width/2-40, height/2);
    line(width/2-40, height/2, width/2-50, height/2-20);
    line(width/2-50, height/2-20, width/2-40, height/2-30);
    
    // middle web, outer radial strings
    line(width/2-80, 0, width/2-40, height/2-50);
    line(width, 30, width/2+10, height/2-30);
    line(width, height-60, width/2+10, height/2+10);
    line(0, height-20, width/2-60, height/2+30);
    line(0, height/4, width/2-80, height/2-30);
    
    // middle web, inner radial strings
    line(width/2-40, height/2-50, width/2-40, height/2-30);
    line(width/2+10, height/2-30, width/2-20, height/2-20);
    line(width/2+10, height/2+10, width/2-20, height/2-10);
    line(width/2-60, height/2+30, width/2-40, height/2);
    line(width/2-80, height/2-30, width/2-50, height/2-20);
    
  }
  
}
