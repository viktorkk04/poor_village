public class House {

  PoorMan p;
  Mult m;
  PVector[] startRectangles = new PVector[10];
  PVector[] rectangles = new PVector[10];

  int lille = 100;

  public House(PoorMan p, Mult m) {
    this.p = p;
    this.m = m;
  }

  public void SetHouse() {
    startRectangles[0] = new PVector(736, 493);
    startRectangles[1] = new PVector(600, 82);
    startRectangles[2] = new PVector(553, 307);
    startRectangles[3] = new PVector(468, 536);
    startRectangles[4] = new PVector(705, 725);
    startRectangles[5] = new PVector(1010, 650);
    startRectangles[6] = new PVector(1104, 72);
    startRectangles[7] = new PVector(1014, 485);
    startRectangles[8] = new PVector(848, 199);
    startRectangles[9] = new PVector(1252, 336);
  }
  public void DrawHouse() {


    for (int i = 0; i < startRectangles.length; i++) {
      rectangles[i] = startRectangles[i].copy().add(new PVector(p.poorManPos.x+correction.x, p.poorManPos.y+correction.y));
    }






    fill(0, 25);

    for (int i = 0; i < rectangles.length; i++) {
      //square(rectangles[i].x, rectangles[i].y, lille);
      if (rectangles[i].y-correction.y > -(lille/2) && rectangles[i].y-correction.y < (lille/2)) {
        if (rectangles[i].x-correction.x > -lille-10 && rectangles[i].x-correction.x < -10) {
          m.stop();
        }
      }
    }
  }
}
