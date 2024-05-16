public class Manager {
  PFont font;
  
  Ui ui;
  Mult m;

  
  House h;
  Water w;
  Path path;
  
  Maps maps;
  Well well;
  Shop shop;

  Animation a;

  
  public void loadGame() {
    
    font = createFont("game_over.ttf", 450);


    ui = new Ui();
    ui.load();

    m = new Mult(p);
    
    h = new House(p, m, ui);
    h.SetHouse();

    w = new Water(p, ui, h);
    w.SetWater();

    path = new Path(p, m);
    path.SetPath();

    

    maps = new Maps(p);
    maps.load();
    
    well = new Well(p, ui);
    well.load();
    
    shop = new Shop(p, m, well, ui);
    shop.load();

    a = new Animation(p);
    a.load();
  }
  public void startGame() {
    if (ui.health <= 80) {

      if (p.toggleMap == false) {

        m.check();

        maps.update();

        path.DrawPath();
        h.DrawHouse();
        w.DrawWater();

        shop.run();
        
        if(shop.run == true){
        well.run();
        }
        
        ui.run();
        
        a.walk();

        println(" ");
      } else {
        maps.update();
      }
    } else {
      die();
    }
  }
  public void die() {
    maps.update();
    ui.run();
    well.run();
    shop.run();
    
    filter(BLUR,2);
    rectMode(CENTER);
    
    fill(0);
    rect(width/2, height/2, 1000, 700, 28);
    
    fill(240);
    textFont(font);
    textAlign(CENTER);
    text("Game Over", width/2, height/2);
    
    textSize(200);
    text("Play Again", width/2, height/2+180);
   
    textSize(100);
    text("Press R ", width/2, height/2+240);
    
    rectMode(CORNER);
    textAlign(RIGHT);
    
  }


}
