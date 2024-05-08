public class Water {

  PoorMan p;
  Ui ui;
  PVector[] startRectangles = new PVector[2];
  PVector[] rectangles = new PVector[2];

  int mellem = 200;
  
  public Water(PoorMan p, Ui ui) {
    this.p = p;
    this.ui = ui;
  }

  public void SetWater() {
    startRectangles[0] = new PVector(1755, 312);
    startRectangles[1] = new PVector(1650, 149);
  }
  public void DrawWater() {


    for (int i = 0; i < startRectangles.length; i++) {
      rectangles[i] = startRectangles[i].copy().add(new PVector(p.poorManPos.x+correction.x, p.poorManPos.y+correction.y));
    }






    fill(0, 25);

    for (int i = 0; i < rectangles.length; i++) {
      //square(rectangles[i].x, rectangles[i].y-50, mellem);
      if (rectangles[i].y-correction.y > -(mellem/2) && rectangles[i].y-correction.y < (mellem/2)) {
        if (rectangles[i].x-correction.x > -mellem-10 && rectangles[i].x-correction.x < -10) {
          ui.water();
        }
      }
    }
  }
}
