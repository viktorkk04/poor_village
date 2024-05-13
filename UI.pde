public class Ui {


  PFont font;

  PVector[] startRectangles = new PVector[10];
  PVector[] rectangles = new PVector[10];

  float health;
  float water;
  float coins;

  PImage livTom;
  PImage liv;

  PImage tørstTom;
  PImage tørst;
  
  PImage coin;


  public void load() {
    liv = loadImage("liv.png");
    liv.resize(85, 85);

    tørst = loadImage("tørst.png");
    tørst.resize(39, 60);
    
    coin = loadImage("coin.png");
    coin.resize(60, 50);
    
    font = createFont("Arial", 72);
  }

  public void run() {
    if (health < 85) {
      if (water >= 60) {
        health += 0.3;
      }
    }
    if (water < 60) {
      water += 0.03;
    }



    //life
    livTom = liv.get(0, 0, liv.width, (int)health);
    livTom.filter(GRAY);

    image(liv, width-180, 25);
    image(livTom, width-180, 25);

    //tørst
    tørstTom = tørst.get(0, 0, tørst.width, (int)water);
    tørstTom.filter(GRAY);

    image(tørst, width-80, 35);
    image(tørstTom, width-80, 35);
    
    image(coin, width-90, 125);
    
    fill(0);
    textFont(font);
    textAlign(RIGHT);
    text((int)coins,width-100,173);

    fill(0, 25);
  }
}
