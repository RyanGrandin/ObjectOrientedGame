class Bugs {
  
  //declare data
  ArrayList<Fly> flies;
  ArrayList<Butterfly> butterflies;
  ArrayList<Centipede> centipedes;
  int secElapsed;
  float web1XMin;
  float web1XMax;
  float web1YMin;
  float web1YMax;
  
  // constructor
  Bugs(float tempWeb1XMin, float tempWeb1XMax, float tempWeb1YMin, 
  float tempWeb1YMax) {
    
    // initialise data
    flies = new ArrayList<Fly>();
    butterflies = new ArrayList<Butterfly>();
    centipedes = new ArrayList<Centipede>();
    web1XMin = tempWeb1XMin;
    web1XMax = tempWeb1XMax;
    web1YMin = tempWeb1YMin;
    web1YMax = tempWeb1YMax;
    
  }
  
  // spawn method
  void spawn(int tempSecElapsed) {
    
    secElapsed = tempSecElapsed;
    
    if (secElapsed % 3 == 0) {
      
      if (flies.size() < 20) {
        
        flies.add(new Fly(web1XMin, web1XMax, web1YMin, web1YMax));
        
      }
      
    }
    
    /*if (secElapsed % 6 == 0) {
      
      if (butterflies.size() < 2) {
        
        butterflies.add(new Butterfly(web1XMin, web1XMax, web1YMin, 
        web1YMax));
        
      }
      
    }
    
    if (secElapsed % 12 == 0) {
      
      if (centipedes.size() < 1) {
        
        centipedes.add(new Centipede(web1XMin, web1XMax, web1YMin, 
        web1YMax));
        
      }
      
    }*/
    
  }
  
  // display method
  void display() {
    
    for (int i = 0; i < flies.size(); i++) {
      
      Fly fly = flies.get(i);
      fly.display();
      
    }
    
    for (int i = 0; i < butterflies.size(); i++) {
      
      Butterfly butterfly = butterflies.get(i);
      butterfly.display();
      
    }
    
    for (int i = 0; i < centipedes.size(); i++) {
      
      Centipede centipede = centipedes.get(i);
      centipede.display();
      
    }
    
  }
  
  void checkForRemovals() {
    
    
    
  }
  
}
