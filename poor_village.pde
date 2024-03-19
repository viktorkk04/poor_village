PImage map;
PImage poorMan;

PVector poorManPos;
PVector poorManSpeed;

int mult;


void setup(){
    size(1742, 980);

    mult = 5;
    
    map = loadImage("map.png");
    map.resize(2200,1759);

    poorManPos = new PVector(50, 50);
    poorManSpeed = new PVector(0, 0);

    poorMan = loadImage("random.jpg");
    poorMan.resize(70,46);
}

void draw() {
    image(map, poorManPos.x, poorManPos.y);
    image(poorMan, width/2 ,height/2 );

    poorManPos.add(new PVector(poorManSpeed.x, poorManSpeed.y).mult(mult));
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    poorManSpeed.y = 1;
  }
  if (key == 's' || key == 'S') {
    poorManSpeed.y = -1;
  }
  if (key == 'a' || key == 'A') {
    poorManSpeed.x = 1;
  }
  if (key == 'd' || key == 'D') {
    poorManSpeed.x = -1;
  }
  
}

void keyReleased() {
  if (key == 'w' || key == 'W' ) {
    poorManSpeed.y = 0;
  }
  if (key == 's' || key == 'S') {
    poorManSpeed.y = 0; 
  }
  if (key == 'a' || key == 'A') {
    poorManSpeed.x = 0;
  }
  if (key == 'd' || key == 'D') {
    poorManSpeed.x = 0;
  }
}
