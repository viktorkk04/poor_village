public class Well {
  
  PoorMan p;
  Ui ui;
  
  PImage well;
  
  
  PVector startRectangles;
  PVector rectangles;
  
  public Well(PoorMan p, Ui ui) {
    this.p = p;
    this.ui = ui;
  }
  public void load() {
    well = loadImage("well.png");
    well.resize(80, 100);
    
    startRectangles = new PVector(1311, 532);
  }
  public void run() {
    rectangles = startRectangles.copy().add(new PVector(p.poorManPos.x+p.correction.x, p.poorManPos.y+p.correction.y));
    image(well, rectangles.x, rectangles.y);
    
    ui.coins += 0.0035;
    
  }
}
