public class Path {

  PoorMan p;
  Mult m;
  PVector[] startRectangles = new PVector[38];
  PVector[] rectangles = new PVector[38];

  int lille = 100;
  int mellem = 200;
  int stor = 300;

  public Path(PoorMan p, Mult m) {
    this.p = p;
    this.m = m;
  }

  public void SetPath() {

    startRectangles[0] = new PVector(1045, 372);
    startRectangles[1] = new PVector(1010, 22);
    startRectangles[2] = new PVector(635, 285);
    startRectangles[3] = new PVector(631, 733);
    startRectangles[4] = new PVector(1310, -30);
    startRectangles[5] = new PVector(1611, 20);
    startRectangles[6] = new PVector(817, -30);
    startRectangles[7] = new PVector(1307, 495);
    startRectangles[8] = new PVector(1307, 570);
    startRectangles[9] = new PVector(133, 201);
    startRectangles[10] = new PVector(1090, 763);
    startRectangles[11] = new PVector(400, 206);
    startRectangles[12] = new PVector(447, -37);
    startRectangles[13] = new PVector(770, 18);
    startRectangles[14] = new PVector(831, 300);
    startRectangles[15] = new PVector(545, 231);
    startRectangles[16] = new PVector(562, 188);
    startRectangles[17] = new PVector(991, 267);
    startRectangles[18] = new PVector(1069, 237);
    startRectangles[19] = new PVector(688, 372);
    startRectangles[20] = new PVector(641, 188);
    startRectangles[21] = new PVector(1149, 245);
    startRectangles[22] = new PVector(1248, 260);
    startRectangles[23] = new PVector(1334, 338);
    startRectangles[24] = new PVector(1349, 237);
    startRectangles[25] = new PVector(1449, 235);
    startRectangles[26] = new PVector(1546, 235);
    startRectangles[27] = new PVector(1645, 225);
    startRectangles[28] = new PVector(1367, 495);
    startRectangles[29] = new PVector(1407, 567);
    startRectangles[30] = new PVector(1505, 567);
    startRectangles[31] = new PVector(1468, 546);
    startRectangles[32] = new PVector(1603, 695);
    startRectangles[33] = new PVector(1309, 827);
    startRectangles[34] = new PVector(118, 602);
    startRectangles[35] = new PVector(306, 546);
    startRectangles[36] = new PVector(280, 500);
    startRectangles[37] = new PVector(279, 15);
    
  }
  public void DrawPath() { 

    
    
    for (int i = 0; i < startRectangles.length; i++) {
      rectangles[i] = startRectangles[i].copy().add(new PVector(p.poorManPos.x+p.correction.x, p.poorManPos.y+p.correction.y));
    }
    
    




    fill(0, 25);

    //square(rectangles[0].x, rectangles[0].y-50, mellem);
    if (rectangles[0].y-p.correction.y > -(mellem/2) && rectangles[0].y-p.correction.y < (mellem/2)) {
      if (rectangles[0].x-p.correction.x > -mellem-10 && rectangles[0].x-p.correction.x < -10) {
        print(" RAMT 0 ");
        m.slow();
      }
    }

    //square(rectangles[1].x, rectangles[1].y-50, mellem);
    if (rectangles[1].y-p.correction.y > -(mellem/2) && rectangles[1].y-p.correction.y < (mellem/2)) {
      if (rectangles[1].x-p.correction.x > -mellem-10 && rectangles[1].x-p.correction.x < -10) {
        print(" RAMT 1 ");
        m.slow();
      }
    }

    //square(rectangles[2].x, rectangles[2].y-50, mellem);
    if (rectangles[2].y-p.correction.y > -(mellem/2) && rectangles[2].y-p.correction.y < (mellem/2)) {
      if (rectangles[2].x-p.correction.x > -mellem-10 && rectangles[2].x-p.correction.x < -10) {
        print(" RAMT 2 ");
        m.slow();
      }
    }

    //square(rectangles[3].x, rectangles[3].y, lille);
    if (rectangles[3].y-p.correction.y > -(lille/2) && rectangles[3].y-p.correction.y < (lille/2)) {
      if (rectangles[3].x-p.correction.x > -lille-10 && rectangles[3].x-p.correction.x < -10) {
        print(" RAMT 3 ");
        m.slow();
      }
    }

    //square(rectangles[4].x, rectangles[4].y-100, stor);
    if (rectangles[4].y-p.correction.y > -(stor/2) && rectangles[4].y-p.correction.y < (stor/2)) {
      if (rectangles[4].x-p.correction.x > -stor-10 && rectangles[4].x-p.correction.x < -10) {
        print(" RAMT 4 ");
        m.slow();
      }
    }

    //square(rectangles[5].x, rectangles[5].y-50, mellem);
    if (rectangles[5].y-p.correction.y > -(mellem/2) && rectangles[5].y-p.correction.y < (mellem/2)) {
      if (rectangles[5].x-p.correction.x > -mellem-10 && rectangles[5].x-p.correction.x < -10) {
        print(" RAMT 5 ");
        m.slow();
      }
    }

    //square(rectangles[6].x, rectangles[6].y-50, mellem);
    if (rectangles[6].y-p.correction.y > -(mellem/2) && rectangles[6].y-p.correction.y < (mellem/2)) {
      if (rectangles[6].x-p.correction.x > -mellem-10 && rectangles[6].x-p.correction.x < -10) {
        print(" RAMT 6 ");
        m.slow();
      }
    }

    //square(rectangles[7].x, rectangles[7].y, lille);
    if (rectangles[7].y-p.correction.y > -(lille/2) && rectangles[7].y-p.correction.y < (lille/2)) {
      if (rectangles[7].x-p.correction.x > -lille-10 && rectangles[7].x-p.correction.x < -10) {
        print(" RAMT 7 ");
        m.slow();
      }
    }

    //square(rectangles[8].x, rectangles[8].y, lille);
    if (rectangles[8].y-p.correction.y > -(lille/2) && rectangles[8].y-p.correction.y < (lille/2)) {
      if (rectangles[8].x-p.correction.x > -lille-10 && rectangles[8].x-p.correction.x < -10) {
        print(" RAMT 8 ");
        m.slow();
      }
    }

    //square(rectangles[9].x, rectangles[9].y-100, stor);
    if (rectangles[9].y-p.correction.y > -(stor/2) && rectangles[9].y-p.correction.y < (stor/2)) {
      if (rectangles[9].x-p.correction.x > -stor-10 && rectangles[9].x-p.correction.x < -10) {
        print(" RAMT 9 ");
        m.slow();
      }
    }

    //square(rectangles[10].x, rectangles[10].y, lille);
    if (rectangles[10].y-p.correction.y > -(lille/2) && rectangles[10].y-p.correction.y < (lille/2)) {
      if (rectangles[10].x-p.correction.x > -lille-10 && rectangles[10].x-p.correction.x < -10) {
        print(" RAMT 10 ");
        m.slow();
      }
    }

    //square(rectangles[11].x, rectangles[11].y, lille);
    if (rectangles[11].y-p.correction.y > -(lille/2) && rectangles[11].y-p.correction.y < (lille/2)) {
      if (rectangles[11].x-p.correction.x > -lille-10 && rectangles[11].x-p.correction.x < -10) {
        print(" RAMT 11 ");
        m.slow();
      }
    }

    //square(rectangles[12].x, rectangles[12].y, lille);
    if (rectangles[12].y-p.correction.y > -(lille/2) && rectangles[12].y-p.correction.y < (lille/2)) {
      if (rectangles[12].x-p.correction.x > -lille-10 && rectangles[12].x-p.correction.x < -10) {
        print(" RAMT 12 ");
        m.slow();
      }
    }

    //square(rectangles[13].x, rectangles[13].y, lille);
    if (rectangles[13].y-p.correction.y > -(lille/2) && rectangles[13].y-p.correction.y < (lille/2)) {
      if (rectangles[13].x-p.correction.x > -lille-10 && rectangles[13].x-p.correction.x < -10) {
        print(" RAMT 13 ");
        m.slow();
      }
    }

    //square(rectangles[14].x, rectangles[14].y, lille);
    if (rectangles[14].y-p.correction.y > -(lille/2) && rectangles[14].y-p.correction.y < (lille/2)) {
      if (rectangles[14].x-p.correction.x > -lille-10 && rectangles[14].x-p.correction.x < -10) {
        print(" RAMT 14 ");
        m.slow();
      }
    }

    //square(rectangles[15].x, rectangles[15].y, lille);
    if (rectangles[15].y-p.correction.y > -(lille/2) && rectangles[15].y-p.correction.y < (lille/2)) {
      if (rectangles[15].x-p.correction.x > -lille-10 && rectangles[15].x-p.correction.x < -10) {
        print(" RAMT 15 ");
        m.slow();
      }
    }

    //square(rectangles[16].x, rectangles[16].y, lille);
    if (rectangles[16].y-p.correction.y > -(lille/2) && rectangles[16].y-p.correction.y < (lille/2)) {
      if (rectangles[16].x-p.correction.x > -lille-10 && rectangles[16].x-p.correction.x < -10) {
        print(" RAMT 16 ");
        m.slow();
      }
    }

    //square(rectangles[17].x, rectangles[17].y, lille);
    if (rectangles[17].y-p.correction.y > -(lille/2) && rectangles[17].y-p.correction.y < (lille/2)) {
      if (rectangles[17].x-p.correction.x > -lille-10 && rectangles[17].x-p.correction.x < -10) {
        print(" RAMT 17 ");
        m.slow();
      }
    }

    //square(rectangles[18].x, rectangles[18].y, lille);
    if (rectangles[18].y-p.correction.y > -(lille/2) && rectangles[18].y-p.correction.y < (lille/2)) {
      if (rectangles[18].x-p.correction.x > -lille-10 && rectangles[18].x-p.correction.x < -10) {
        print(" RAMT 18 ");
        m.slow();
      }
    }

    //square(rectangles[19].x, rectangles[19].y-50, mellem);
    if (rectangles[19].y-p.correction.y > -(mellem/2) && rectangles[19].y-p.correction.y < (mellem/2)) {
      if (rectangles[19].x-p.correction.x > -mellem-10 && rectangles[19].x-p.correction.x < -10) {
        print(" RAMT 19 ");
        m.slow();
      }
    }

    //square(rectangles[20].x, rectangles[20].y, lille);
    if (rectangles[20].y-p.correction.y > -(lille/2) && rectangles[20].y-p.correction.y < (lille/2)) {
      if (rectangles[20].x-p.correction.x > -lille-10 && rectangles[20].x-p.correction.x < -10) {
        print(" RAMT 20 ");
        m.slow();
      }
    }

    //square(rectangles[21].x, rectangles[21].y, lille);
    if (rectangles[21].y-p.correction.y > -(lille/2) && rectangles[21].y-p.correction.y < (lille/2)) {
      if (rectangles[21].x-p.correction.x > -lille-10 && rectangles[21].x-p.correction.x < -10) {
        print(" RAMT 21 ");
        m.slow();
      }
    }

    //square(rectangles[22].x, rectangles[22].y, lille);
    if (rectangles[22].y-p.correction.y > -(lille/2) && rectangles[22].y-p.correction.y < (lille/2)) {
      if (rectangles[22].x-p.correction.x > -lille-10 && rectangles[22].x-p.correction.x < -10) {
        print(" RAMT 22 ");
        m.slow();
      }
    }

    //square(rectangles[23].x, rectangles[23].y, lille);
    if (rectangles[23].y-p.correction.y > -(lille/2) && rectangles[23].y-p.correction.y < (lille/2)) {
      if (rectangles[23].x-p.correction.x > -lille-10 && rectangles[23].x-p.correction.x < -10) {
        print(" RAMT 23 ");
        m.slow();
      }
    }

    //square(rectangles[24].x, rectangles[24].y, lille);
    if (rectangles[24].y-p.correction.y > -(lille/2) && rectangles[24].y-p.correction.y < (lille/2)) {
      if (rectangles[24].x-p.correction.x > -lille-10 && rectangles[24].x-p.correction.x < -10) {
        print(" RAMT 24 ");
        m.slow();
      }
    }

    //square(rectangles[25].x, rectangles[25].y, lille);
    if (rectangles[25].y-p.correction.y > -(lille/2) && rectangles[25].y-p.correction.y < (lille/2)) {
      if (rectangles[25].x-p.correction.x > -lille-10 && rectangles[25].x-p.correction.x < -10) {
        print(" RAMT 25 ");
        m.slow();
      }
    }

    //square(rectangles[26].x, rectangles[26].y, lille);
    if (rectangles[26].y-p.correction.y > -(lille/2) && rectangles[26].y-p.correction.y < (lille/2)) {
      if (rectangles[26].x-p.correction.x > -lille-10 && rectangles[26].x-p.correction.x < -10) {
        print(" RAMT 26 ");
        m.slow();
      }
    }

    //square(rectangles[27].x, rectangles[27].y, lille);
    if (rectangles[27].y-p.correction.y > -(lille/2) && rectangles[27].y-p.correction.y < (lille/2)) {
      if (rectangles[27].x-p.correction.x > -lille-10 && rectangles[27].x-p.correction.x < -10) {
        print(" RAMT 27 ");
        m.slow();
      }
    }

    //square(rectangles[28].x, rectangles[28].y, lille);
    if (rectangles[28].y-p.correction.y > -(lille/2) && rectangles[28].y-p.correction.y < (lille/2)) {
      if (rectangles[28].x-p.correction.x > -lille-10 && rectangles[28].x-p.correction.x < -10) {
        print(" RAMT 28 ");
        m.slow();
      }
    }

    //square(rectangles[29].x, rectangles[29].y, lille);
    if (rectangles[29].y-p.correction.y > -(lille/2) && rectangles[29].y-p.correction.y < (lille/2)) {
      if (rectangles[29].x-p.correction.x > -lille-10 && rectangles[29].x-p.correction.x < -10) {
        print(" RAMT 29 ");
        m.slow();
      }
    }

    //square(rectangles[30].x, rectangles[30].y, lille);
    if (rectangles[30].y-p.correction.y > -(lille/2) && rectangles[30].y-p.correction.y < (lille/2)) {
      if (rectangles[30].x-p.correction.x > -lille-10 && rectangles[30].x-p.correction.x < -10) {
        print(" RAMT 30 ");
        m.slow();
      }
    }

    //square(rectangles[31].x, rectangles[31].y, lille);
    if (rectangles[31].y-p.correction.y > -(lille/2) && rectangles[31].y-p.correction.y < (lille/2)) {
      if (rectangles[31].x-p.correction.x > -lille-10 && rectangles[31].x-p.correction.x < -10) {
        print(" RAMT 31 ");
        m.slow();
      }
    }

    //square(rectangles[32].x, rectangles[32].y-100, stor);
    if (rectangles[32].y-p.correction.y > -(stor/2) && rectangles[32].y-p.correction.y < (stor/2)) {
      if (rectangles[32].x-p.correction.x > -stor-10 && rectangles[32].x-p.correction.x < -10) {
        print(" RAMT 32 ");
        m.slow();
      }
    }

    //square(rectangles[33].x, rectangles[33].y-100, stor);
    if (rectangles[33].y-p.correction.y > -(stor/2) && rectangles[33].y-p.correction.y < (stor/2)) {
      if (rectangles[33].x-p.correction.x > -stor-10 && rectangles[33].x-p.correction.x < -10) {
        print(" RAMT 33 ");
        m.slow();
      }
    }

    //square(rectangles[34].x, rectangles[34].y-50, mellem);
    if (rectangles[34].y-p.correction.y > -(mellem/2) && rectangles[34].y-p.correction.y < (mellem/2)) {
      if (rectangles[34].x-p.correction.x > -mellem-10 && rectangles[34].x-p.correction.x < -10) {
        print(" RAMT 34 ");
        m.slow();
      }
    }

    //square(rectangles[35].x, rectangles[35].y, lille);
    if (rectangles[35].y-p.correction.y > -(lille/2) && rectangles[35].y-p.correction.y < (lille/2)) {
      if (rectangles[35].x-p.correction.x > -lille-10 && rectangles[35].x-p.correction.x < -10) {
        print(" RAMT 35 ");
        m.slow();
      }
    }

    //square(rectangles[36].x, rectangles[36].y, lille);
    if (rectangles[36].y-p.correction.y > -(lille/2) && rectangles[36].y-p.correction.y < (lille/2)) {
      if (rectangles[36].x-p.correction.x > -lille-10 && rectangles[36].x-p.correction.x < -10) {
        print(" RAMT 36 ");
        m.slow();
      }
    }

    //rect(rectangles[37].x, rectangles[37].y, 1480, 830);
    if (rectangles[37].y-p.correction.y > 50 || rectangles[37].y-p.correction.y < -780) {
      
      m.slow();
    } else if (rectangles[37].x-p.correction.x > -10 || rectangles[37].x-p.correction.x < -1490) {
      
      m.slow();
    }
  }
}
