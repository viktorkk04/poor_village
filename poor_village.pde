Manager manager;
PoorMan p;


void setup() {
  size(1742, 980);
  
    
  p = new PoorMan();
  manager = new Manager();
  manager.loadGame();
}

void draw() {
  manager.startGame();
}

void keyPressed() {
  p.pressedKey();
  
  if (key == 'r' || key == 'R') {
      p = new PoorMan();
      manager = new Manager();   
      manager.loadGame();
    }
}

void keyReleased(){
  p.releasedKey();
}
