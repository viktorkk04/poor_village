public class PoorMan {

  
  PVector poorManPos;
  PVector poorManSpeed;
  PVector dotPos;
  
  
  
  boolean up;
  boolean down;
  boolean right;
  boolean left;

  public PoorMan() {
   
    up = false;
    down = false;
    right = false;
    left = false;
    
    poorManSpeed = new PVector(0, 0);
    poorManPos = new PVector(-307, 0);
    dotPos = new PVector(22, 15);
    
    
  }



  void pressedKey() {
    if (key == 'w' || key == 'W') {
      poorManSpeed.y = 1;
      up = true;
    }
    if (key == 's' || key == 'S') {
      poorManSpeed.y = -1;
      down = true;
    }
    if (key == 'a' || key == 'A') {
      poorManSpeed.x = 1;
      right = true;
    }
    if (key == 'd' || key == 'D') {
      poorManSpeed.x = -1;
      left = true;
    }
  }

  void releasedKey() {
    if (key == 'w' || key == 'W' ) {
      poorManSpeed.y = 0;
      up = false;
    }
     if (key == 's' || key == 'S') {
      poorManSpeed.y = 0;
      down = false;
    }
    if (key == 'a' || key == 'A') {
      poorManSpeed.x = 0;
      right = false;
    }
    if (key == 'd' || key == 'D') {
      poorManSpeed.x = 0;
      left = false;
    }
  }
}
