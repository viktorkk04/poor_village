public class Ui {

  float health;
  
  PImage livTom;
  PImage liv;
  
  PImage sultTom;
  PImage sult;
  
  PImage tørstTom;
  PImage tørst;

  public void start() {

    health += 0.2;
    
    liv = loadImage("liv.png");
    liv.resize(85, 85);
    
    sult = loadImage("sult.png");
    sult.resize(85, 85);
    
    tørst = loadImage("tørst.png");
    tørst.resize(85, 85);

    //life
    livTom = liv.get(0, 0, liv.width, (int)health);
    livTom.filter(GRAY);

    image(liv, width-300, 25);
    image(livTom, width-300, 25);
    
    //hunger
    sultTom = sult.get(0, 0, sult.width, (int)health);
    sultTom.filter(GRAY);

    image(sult, width-200, 25);
    image(sultTom, width-200, 25);
    
    //tørst
    tørstTom = tørst.get(0, 0, tørst.width, (int)health);
    tørstTom.filter(GRAY);

    image(tørst, width-100, 25);
    image(tørstTom, width-100, 25);
  }
}
