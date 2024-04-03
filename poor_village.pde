PImage poorMan_front;
PImage poorMan_frontHøjre;
PImage poorMan_frontVenstre;

PImage poorMan_bag;
PImage poorMan_bagHøjre;
PImage poorMan_bagVenstre;

PImage poorMan_højre;
PImage poorMan_højreHøjre;
PImage poorMan_højreVenstre;

PImage poorMan_venstre;
PImage poorMan_venstreHøjre;
PImage poorMan_venstreVenstre;

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

int mult;

int resize_x;
int resize_y;

PVector midt;

void setup() {
  size(1742, 980);

  resize_x = 63;
  resize_y = 106;

  poorMan_front = loadImage("front.png");
  poorMan_front.resize(resize_x+5, resize_y);

  poorMan_frontHøjre = loadImage("frontHøjre.png");
  poorMan_frontHøjre.resize(resize_x, resize_y);

  poorMan_frontVenstre = loadImage("frontVenstre.png");
  poorMan_frontVenstre.resize(resize_x, resize_y);

  poorMan_bag = loadImage("bag.png");
  poorMan_bag.resize(resize_x+10, resize_y);

  poorMan_bagHøjre = loadImage("bagHøjre.png");
  poorMan_bagHøjre.resize(resize_x, resize_y);

  poorMan_bagVenstre = loadImage("bagVenstre.png");
  poorMan_bagVenstre.resize(resize_x, resize_y);

  poorMan_højre = loadImage("højre.png");
  poorMan_højre.resize(resize_x, resize_y);

  poorMan_højreHøjre = loadImage("højreHøjre.png");
  poorMan_højreHøjre.resize(resize_x, resize_y);

  poorMan_højreVenstre = loadImage("højreVenstre.png");
  poorMan_højreVenstre.resize(resize_x, resize_y);

  poorMan_venstre = loadImage("venstre.png");
  poorMan_venstre.resize(resize_x, resize_y);

  poorMan_venstreHøjre = loadImage("venstreHøjre.png");
  poorMan_venstreHøjre.resize(resize_x, resize_y);

  poorMan_venstreVenstre = loadImage("venstreVenstre.png");
  poorMan_venstreVenstre.resize(resize_x, resize_y);

  up = false;
  down = false;
  right = false;
  left = false;

  toggleMap = false;

  mult = 4;

  map = loadImage("map.png");
  map.resize(2200, 1759);

  kort = loadImage("map.png");
  kort.resize(250, 200);

  dot = loadImage("dot.png");
  dot.resize(15, 15);
  
  megaKort = loadImage("map.png");
  megaKort.resize(width, height);



  poorManPos = new PVector(0, 0);
  poorManSpeed = new PVector(0, 0);

  dotPos = new PVector(poorManPos.x+105, poorManPos.y+65);


  midt = new PVector(875, 485);
}

void draw() {

  if (toggleMap == false) {

    if (poorManPos.x >= 0) {
      poorManPos.x = 0;
      dotPos.x = 105;
    }

    if (poorManPos.y >= 0) {
      poorManPos.y = 0;
      dotPos.y = 65;
    }


    image(map, poorManPos.x, poorManPos.y);

    image(kort, 10, 10);

    image(dot, dotPos.x, dotPos.y);


    if (up == true) {
      //Up
      image(poorMan_bag, width/2, height/2 );

      print("up ");
    } else if (down == true) {
      //Down
      image(poorMan_frontHøjre, width/2, height/2 );

      print("down ");
    } else if (right == true) {
      //Right
      image(poorMan_højre, width/2, height/2 );

      print("right ");
    } else if (left == true) {
      //Left
      image(poorMan_venstre, width/2, height/2 );

      print("left ");
    } else {
      image(poorMan_front, width/2, height/2 );
      print("stop ");
    }





    poorManPos.add(new PVector(poorManSpeed.x, poorManSpeed.y).mult(mult));

    dotPos.add(new PVector(poorManSpeed.x, poorManSpeed.y).mult(mult*(-0.112)));

    print(poorManSpeed);
    print(" ");

    println(toggleMap);
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
  if (key == 'm' || key == 'M') {
    toggleMap =(!toggleMap);
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
}
