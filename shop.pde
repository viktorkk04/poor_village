public class Shop {
  
  PoorMan p;
  Mult m;
  Well well;
  Ui ui;
  
  PImage shop;
  PImage needCoinsPic;
  
  boolean run;
  
  PVector startRectangles;
  PVector rectangles;
  
  int needCoins = 100;
  
  int lille = 100;
  
  public Shop(PoorMan p, Mult m, Well well, Ui ui) {
    this.p = p;
    this.m = m;
    this.well = well;
    this.ui = ui;
  }
  public void load() {
    shop = loadImage("shop.png");
    shop.resize(78, 78);
    
    needCoinsPic = loadImage("needCoins.png");
    needCoinsPic.resize(90, 79);
    
    startRectangles = new PVector(1368, 80);
  }
  public void run() {
    rectangles = startRectangles.copy().add(new PVector(p.poorManPos.x+p.correction.x, p.poorManPos.y+p.correction.y));
    image(shop, rectangles.x, rectangles.y);
    
    if (needCoins == 100) {
        image(needCoinsPic, rectangles.x-10, rectangles.y-80);
      }
    
    if (rectangles.y-p.correction.y > -(lille/2) && rectangles.y-p.correction.y < (lille/2)) {
        if (rectangles.x-p.correction.x > -lille-10 && rectangles.x-p.correction.x < -10) {
          m.stop();
          if(ui.coins >= 100 && run == false){
              run = true;
              ui.coins -= 100;
          
        }
      }
  }
}
}
