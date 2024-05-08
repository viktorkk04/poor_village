public class Ui {

  float health;
  float food;
  float water;

  PImage livTom;
  PImage liv;

  PImage sultTom;
  PImage sult;

  PImage tørstTom;
  PImage tørst;
  
  
  public void load() {
    liv = loadImage("liv.png");
    liv.resize(85, 85);

    sult = loadImage("sult.png");
    sult.resize(85, 85);

    tørst = loadImage("tørst.png");
    tørst.resize(85, 85);
    
  }

  public void run() {

    health += 0.2;
    food += 0.2;
    water += 0.05;



    //life
    livTom = liv.get(0, 0, liv.width, (int)health);
    livTom.filter(GRAY);

    image(liv, width-300, 25);
    image(livTom, width-300, 25);

    //hunger
    sultTom = sult.get(0, 0, sult.width, (int)food);
    sultTom.filter(GRAY);

    image(sult, width-200, 25);
    image(sultTom, width-200, 25);

    //tørst
    tørstTom = tørst.get(0, 0, tørst.width, (int)water);
    tørstTom.filter(GRAY);

    image(tørst, width-100, 25);
    image(tørstTom, width-100, 25);
  }

  void water() {
    if(water > 0){
      water -= 0.4;
    }
    
  }
}
