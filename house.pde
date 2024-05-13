public class House {

  PoorMan p;
  Mult m;
  Ui ui;
  PVector[] startRectangles = new PVector[10];
  PVector[] rectangles = new PVector[10];

  int lille = 100;
  
  float[] needWaterTime = new float[10];

  public House(PoorMan p, Mult m, Ui ui) {
    this.p = p;
    this.m = m;
    this.ui = ui;
  }

  public void SetHouse() {
    startRectangles[0] = new PVector(736, 493);
    startRectangles[1] = new PVector(603, 82);
    startRectangles[2] = new PVector(556, 307);
    startRectangles[3] = new PVector(472, 536);
    startRectangles[4] = new PVector(715, 725);
    startRectangles[5] = new PVector(1010, 650);
    startRectangles[6] = new PVector(1104, 72);
    startRectangles[7] = new PVector(1014, 485);
    startRectangles[8] = new PVector(852, 199);
    startRectangles[9] = new PVector(1252, 336);
  }
  public void DrawHouse() {


    for (int i = 0; i < startRectangles.length; i++) {
      rectangles[i] = startRectangles[i].copy().add(new PVector(p.poorManPos.x+p.correction.x, p.poorManPos.y+p.correction.y));
    }






    fill(0, 25);

    for (int i = 0; i < rectangles.length; i++) {
      //square(rectangles[i].x, rectangles[i].y, lille);
      if (rectangles[i].y-p.correction.y > -(lille/2) && rectangles[i].y-p.correction.y < (lille/2)) {
        if (rectangles[i].x-p.correction.x > -lille-10 && rectangles[i].x-p.correction.x < -10) {
          needWater(i);
          m.stop();
        }
      }
    }
  }
  public void needWater(int i) {
    if (ui.water <= 70) {
      if (needWaterTime[i] >= 100) {
        ui.coins += 5;
        needWaterTime[i] = 0;
        ui.water += 12;
      }
    }
  }
}
