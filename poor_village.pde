PImage poorMan_front;
PImage poorMan_frontHøjre;
PImage poorMan_frontVenstre;

PImage[] frontWalk = new PImage[4];

PImage poorMan_bag;
PImage poorMan_bagHøjre;
PImage poorMan_bagVenstre;

PImage[] bagWalk = new PImage[4];

PImage poorMan_højre;
PImage poorMan_højreHøjre;
PImage poorMan_højreVenstre;

PImage[] højreWalk = new PImage[4];

PImage poorMan_venstre;
PImage poorMan_venstreHøjre;
PImage poorMan_venstreVenstre;

PImage[] venstreWalk = new PImage[4];

   
boolean up;
boolean down;
boolean right;
boolean left;
boolean toggleMap;

PImage map;
PImage kort;
PImage dot;
PImage megaKort;

PVector dotPos;

PVector poorManPos;
PVector poorManSpeed;


int resize_x;
int resize_y;

PVector correction;

float mult;

Ui u;
Mult m;

void setup() {
  size(1742, 980);
  
  u = new Ui();
  m = new Mult();
  
  
  smooth();

  resize_x = 63;
  resize_y = 106;
  
  
  //gå nedad
  frontWalk[0] = loadImage("front.png");
  frontWalk[0].resize(resize_x, resize_y);

  frontWalk[1] = loadImage("frontHøjre.png");
  frontWalk[1].resize(resize_x, resize_y);
  
  frontWalk[2] = loadImage("front.png");
  frontWalk[2].resize(resize_x, resize_y);

  frontWalk[3] = loadImage("frontVenstre.png");
  frontWalk[3].resize(resize_x, resize_y);

  //gå opad
  bagWalk[0] = loadImage("bag.png");
  bagWalk[0].resize(resize_x, resize_y);

  bagWalk[1] = loadImage("bagHøjre.png");
  bagWalk[1].resize(resize_x, resize_y);
  
  bagWalk[2] = loadImage("bag.png");
  bagWalk[2].resize(resize_x, resize_y);

  bagWalk[3] = loadImage("bagVenstre.png");
  bagWalk[3].resize(resize_x, resize_y);
  
  
  //gå til højre
  højreWalk[0] = loadImage("højre.png");
  højreWalk[0].resize(resize_x, resize_y);

  højreWalk[1] = loadImage("højreHøjre.png");
  højreWalk[1].resize(resize_x, resize_y);
  
  højreWalk[2] = loadImage("højre.png");
  højreWalk[2].resize(resize_x, resize_y);

  højreWalk[3] = loadImage("højreVenstre.png");
  højreWalk[3].resize(resize_x, resize_y);


  //gå til venstre
  venstreWalk[0] = loadImage("venstre.png");
  venstreWalk[0].resize(resize_x, resize_y);

  venstreWalk[1] = loadImage("venstreHøjre.png");
  venstreWalk[1].resize(resize_x, resize_y);
  
  venstreWalk[2] = loadImage("venstre.png");
  venstreWalk[2].resize(resize_x, resize_y);

  venstreWalk[3] = loadImage("venstreVenstre.png");
  venstreWalk[3].resize(resize_x, resize_y);

  up = false;
  down = false;
  right = false;
  left = false;

  toggleMap = false;

  map = loadImage("village.png");
  map.resize(3322, 1759);

  kort = loadImage("village.png");
  kort.resize(378, 200);
  kort = kort.get(115, 40, kort.width-170, kort.height-65);

  dot = loadImage("dot.png");
  dot.resize(15, 15);
  
  megaKort = loadImage("village.png");
  megaKort.resize(width, height);



  poorManPos = new PVector(0, 0);
  poorManSpeed = new PVector(0, 0);

  dotPos = new PVector(poorManPos.x, poorManPos.y);


  correction = new PVector(915, 525);
  
  
}

void draw() {
  
  
  background(1,110,129);

  
  if (toggleMap == false) {

   /* if (poorManPos.x >= 0) {
      poorManPos.x = 0;
      dotPos.x = 105;
    }

    if (poorManPos.y >= 0) {
      poorManPos.y = 0;
      dotPos.y = 65;
    }

*/
    image(map, poorManPos.x, poorManPos.y);
  
    image(kort, 10, 10);

    image(dot, dotPos.x, dotPos.y);
    
    
    u.start();
    
    m.mult();
    m.checkPath();
    

    if (up == true) {
      //Up
      image(bagWalk[frameCount/12%4], width/2, height/2 );

      print("up ");
    } else if (down == true) {
      //Down
      image(frontWalk[frameCount/12%4], width/2, height/2 );

      print("down ");
    } else if (right == true) {
      //Right
      image(højreWalk[frameCount/12%4], width/2, height/2 );

      print("right ");
    } else if (left == true) {
      //Left
      image(venstreWalk[frameCount/12%4], width/2, height/2 );

      print("left ");
    } else {
      image(frontWalk[0], width/2, height/2 );
      print("stop ");
    }





    poorManPos.add(new PVector(poorManSpeed.x, poorManSpeed.y).mult(mult));

    dotPos.add(new PVector(poorManSpeed.x, poorManSpeed.y).mult(mult*(-0.113)));
    
    

    println(mult);
    
   
    
  }
  else{
      image(megaKort, 0, 0);
  }
}

void keyPressed() {
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

void keyReleased() {
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
  if (key == 'm' || key == 'M') {
    toggleMap =(!toggleMap);
  }
}
