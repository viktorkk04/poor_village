public class Water {

  PoorMan p;
  Ui ui;
  House h;
  
  PImage needWater;
  
  PVector[] startRectangles = new PVector[2];
  PVector[] rectangles = new PVector[2];

  int mellem = 200;

  public Water(PoorMan p, Ui ui, House h) {
    this.p = p;
    this.ui = ui;
    this.h = h;
  }

  public void SetWater() {
    startRectangles[0] = new PVector(1755, 312);
    startRectangles[1] = new PVector(1650, 149);

    needWater = loadImage("needWater.png");
    needWater.resize(82, 79);

    for (int i = 0; i < h.needWaterTime.length; i++) {
      h.needWaterTime[i] = 100;
    }
  }

  public void DrawWater() {
    for (int i = 0; i < startRectangles.length; i++) {
      rectangles[i] = startRectangles[i].copy().add(new PVector(p.poorManPos.x+p.correction.x, p.poorManPos.y+p.correction.y));
    }

    for (int i = 0; i < rectangles.length; i++) {
      if (rectangles[i].y-p.correction.y > -(mellem/2) && rectangles[i].y-p.correction.y < (mellem/2)) {
        if (rectangles[i].x-p.correction.x > -mellem-10 && rectangles[i].x-p.correction.x < -10) {
          if (ui.water >= 0) {
            ui.water -= 0.4;
          }
        }
      }
    }

    for (int i = 0; i < h.needWaterTime.length; i++) {
      if (h.needWaterTime[i] >= 100) {
        image(needWater, h.rectangles[i].x, h.rectangles[i].y-60);
      } else {
        h.needWaterTime[i] += 0.05;
      }
    }
  }
}
