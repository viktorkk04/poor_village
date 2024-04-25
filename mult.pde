 public class Mult {
   
    public void mult(){
      
      if(poorManSpeed.y != 0 && poorManSpeed.x != 0){
     mult = 3;
  }
  else{
    mult = 4;
    }
    //Path p;
  //p = new Path();
  
  }
  void slow(){
    
    
    if(poorManSpeed.y != 0 && poorManSpeed.x != 0){
     mult = 1;
  }
  else{
    mult = 2;
    }
    
  }
  
  void checkPath(){
     int lille = 100;
    int mellem = 200;
    int stor = 300;
    
    mult();

    PVector[] rectangles = new PVector[38];

    rectangles[0] = new PVector(1045+poorManPos.x+correction.x, 372+poorManPos.y+correction.y);
    rectangles[1] = new PVector(1010+poorManPos.x+correction.x, 22+poorManPos.y+correction.y);
    rectangles[2] = new PVector(635+poorManPos.x+correction.x, 285+poorManPos.y+correction.y);
    rectangles[3] = new PVector(631+poorManPos.x+correction.x, 733+poorManPos.y+correction.y);
    rectangles[4] = new PVector(1310+poorManPos.x+correction.x, -30+poorManPos.y+correction.y);
    rectangles[5] = new PVector(1611+poorManPos.x+correction.x, 20+poorManPos.y+correction.y);
    rectangles[6] = new PVector(817+poorManPos.x+correction.x, -30+poorManPos.y+correction.y);
    rectangles[7] = new PVector(1307+poorManPos.x+correction.x, 495+poorManPos.y+correction.y);
    rectangles[8] = new PVector(1307+poorManPos.x+correction.x, 570+poorManPos.y+correction.y);
    rectangles[9] = new PVector(133+poorManPos.x+correction.x, 201+poorManPos.y+correction.y);
    rectangles[10] = new PVector(1090+poorManPos.x+correction.x, 763+poorManPos.y+correction.y);
    rectangles[11] = new PVector(400+poorManPos.x+correction.x, 206+poorManPos.y+correction.y);
    rectangles[12] = new PVector(447+poorManPos.x+correction.x, -37+poorManPos.y+correction.y);
    rectangles[13] = new PVector(770+poorManPos.x+correction.x, 18+poorManPos.y+correction.y);
    rectangles[14] = new PVector(831+poorManPos.x+correction.x, 300+poorManPos.y+correction.y);
    rectangles[15] = new PVector(545+poorManPos.x+correction.x, 231+poorManPos.y+correction.y);
    rectangles[16] = new PVector(562+poorManPos.x+correction.x, 188+poorManPos.y+correction.y);
    rectangles[17] = new PVector(991+poorManPos.x+correction.x, 267+poorManPos.y+correction.y);
    rectangles[18] = new PVector(1069+poorManPos.x+correction.x, 237+poorManPos.y+correction.y);
    rectangles[19] = new PVector(688+poorManPos.x+correction.x, 372+poorManPos.y+correction.y);
    rectangles[20] = new PVector(641+poorManPos.x+correction.x, 188+poorManPos.y+correction.y);
    rectangles[21] = new PVector(1149+poorManPos.x+correction.x, 245+poorManPos.y+correction.y);
    rectangles[22] = new PVector(1248+poorManPos.x+correction.x, 260+poorManPos.y+correction.y);
    rectangles[23] = new PVector(1334+poorManPos.x+correction.x, 338+poorManPos.y+correction.y);
    rectangles[24] = new PVector(1349+poorManPos.x+correction.x, 237+poorManPos.y+correction.y);
    rectangles[25] = new PVector(1449+poorManPos.x+correction.x, 235+poorManPos.y+correction.y);
    rectangles[26] = new PVector(1546+poorManPos.x+correction.x, 235+poorManPos.y+correction.y);
    rectangles[27] = new PVector(1645+poorManPos.x+correction.x, 225+poorManPos.y+correction.y);
    rectangles[28] = new PVector(1367+poorManPos.x+correction.x, 495+poorManPos.y+correction.y);
    rectangles[29] = new PVector(1407+poorManPos.x+correction.x, 567+poorManPos.y+correction.y);
    rectangles[30] = new PVector(1505+poorManPos.x+correction.x, 567+poorManPos.y+correction.y);
    rectangles[31] = new PVector(1468+poorManPos.x+correction.x, 546+poorManPos.y+correction.y);
    rectangles[32] = new PVector(1603+poorManPos.x+correction.x, 695+poorManPos.y+correction.y);
    rectangles[33] = new PVector(1309+poorManPos.x+correction.x, 827+poorManPos.y+correction.y);
    rectangles[34] = new PVector(118+poorManPos.x+correction.x, 602+poorManPos.y+correction.y);
    rectangles[35] = new PVector(306+poorManPos.x+correction.x, 546+poorManPos.y+correction.y);
    rectangles[36] = new PVector(280+poorManPos.x+correction.x, 500+poorManPos.y+correction.y);
    rectangles[37] = new PVector(279+poorManPos.x+correction.x, 15+poorManPos.y+correction.y);





  
    fill(0,25);

    square(rectangles[0].x, rectangles[0].y-50, mellem);
    if (rectangles[0].y-correction.y > -(mellem/2) && rectangles[0].y-correction.y < (mellem/2)) {
      if (rectangles[0].x-correction.x > -mellem-10 && rectangles[0].x-correction.x < -10) {
        print(" RAMT 0 ");
        slow();
      }
    }

    square(rectangles[1].x, rectangles[1].y-50, mellem);
    if (rectangles[1].y-correction.y > -(mellem/2) && rectangles[1].y-correction.y < (mellem/2)) {
      if (rectangles[1].x-correction.x > -mellem-10 && rectangles[1].x-correction.x < -10) {
        print(" RAMT 1 ");
        slow();
      }
    }

    square(rectangles[2].x, rectangles[2].y-50, mellem);
    if (rectangles[2].y-correction.y > -(mellem/2) && rectangles[2].y-correction.y < (mellem/2)) {
      if (rectangles[2].x-correction.x > -mellem-10 && rectangles[2].x-correction.x < -10) {
        print(" RAMT 2 ");
        slow();
      }
    }

    square(rectangles[3].x, rectangles[3].y, lille);
    if (rectangles[3].y-correction.y > -(lille/2) && rectangles[3].y-correction.y < (lille/2)) {
      if (rectangles[3].x-correction.x > -lille-10 && rectangles[3].x-correction.x < -10) {
        print(" RAMT 3 ");
        slow();
      }
    }

    square(rectangles[4].x, rectangles[4].y-100, stor);
    if (rectangles[4].y-correction.y > -(stor/2) && rectangles[4].y-correction.y < (stor/2)) {
      if (rectangles[4].x-correction.x > -stor-10 && rectangles[4].x-correction.x < -10) {
        print(" RAMT 4 ");
        slow();
      }
    }

    square(rectangles[5].x, rectangles[5].y-50, mellem);
    if (rectangles[5].y-correction.y > -(mellem/2) && rectangles[5].y-correction.y < (mellem/2)) {
      if (rectangles[5].x-correction.x > -mellem-10 && rectangles[5].x-correction.x < -10) {
        print(" RAMT 5 ");
        slow();
      }
    }

    square(rectangles[6].x, rectangles[6].y-50, mellem);
    if (rectangles[6].y-correction.y > -(mellem/2) && rectangles[6].y-correction.y < (mellem/2)) {
      if (rectangles[6].x-correction.x > -mellem-10 && rectangles[6].x-correction.x < -10) {
        print(" RAMT 6 ");
        slow();
      }
    }

    square(rectangles[7].x, rectangles[7].y, lille);
    if (rectangles[7].y-correction.y > -(lille/2) && rectangles[7].y-correction.y < (lille/2)) {
      if (rectangles[7].x-correction.x > -lille-10 && rectangles[7].x-correction.x < -10) {
        print(" RAMT 7 ");
        slow();
      }
    }

    square(rectangles[8].x, rectangles[8].y, lille);
    if (rectangles[8].y-correction.y > -(lille/2) && rectangles[8].y-correction.y < (lille/2)) {
      if (rectangles[8].x-correction.x > -lille-10 && rectangles[8].x-correction.x < -10) {
        print(" RAMT 8 ");
        slow();
      }
    }

    square(rectangles[9].x, rectangles[9].y-100, stor);
    if (rectangles[9].y-correction.y > -(stor/2) && rectangles[9].y-correction.y < (stor/2)) {
      if (rectangles[9].x-correction.x > -stor-10 && rectangles[9].x-correction.x < -10) {
        print(" RAMT 9 ");
        slow();
      }
    }

    square(rectangles[10].x, rectangles[10].y, lille);
    if (rectangles[10].y-correction.y > -(lille/2) && rectangles[10].y-correction.y < (lille/2)) {
      if (rectangles[10].x-correction.x > -lille-10 && rectangles[10].x-correction.x < -10) {
        print(" RAMT 10 ");
        slow();
      }
    }

    square(rectangles[11].x, rectangles[11].y, lille);
    if (rectangles[11].y-correction.y > -(lille/2) && rectangles[11].y-correction.y < (lille/2)) {
      if (rectangles[11].x-correction.x > -lille-10 && rectangles[11].x-correction.x < -10) {
        print(" RAMT 11 ");
        slow();
      }
    }

    square(rectangles[12].x, rectangles[12].y, lille);
    if (rectangles[12].y-correction.y > -(lille/2) && rectangles[12].y-correction.y < (lille/2)) {
      if (rectangles[12].x-correction.x > -lille-10 && rectangles[12].x-correction.x < -10) {
        print(" RAMT 12 ");
        slow();
      }
    }

    square(rectangles[13].x, rectangles[13].y, lille);
    if (rectangles[13].y-correction.y > -(lille/2) && rectangles[13].y-correction.y < (lille/2)) {
      if (rectangles[13].x-correction.x > -lille-10 && rectangles[13].x-correction.x < -10) {
        print(" RAMT 13 ");
        slow();
      }
    }

    square(rectangles[14].x, rectangles[14].y, lille);
    if (rectangles[14].y-correction.y > -(lille/2) && rectangles[14].y-correction.y < (lille/2)) {
      if (rectangles[14].x-correction.x > -lille-10 && rectangles[14].x-correction.x < -10) {
        print(" RAMT 14 ");
        slow();
      }
    }

    square(rectangles[15].x, rectangles[15].y, lille);
    if (rectangles[15].y-correction.y > -(lille/2) && rectangles[15].y-correction.y < (lille/2)) {
      if (rectangles[15].x-correction.x > -lille-10 && rectangles[15].x-correction.x < -10) {
        print(" RAMT 15 ");
        slow();
      }
    }

    square(rectangles[16].x, rectangles[16].y, lille);
    if (rectangles[16].y-correction.y > -(lille/2) && rectangles[16].y-correction.y < (lille/2)) {
      if (rectangles[16].x-correction.x > -lille-10 && rectangles[16].x-correction.x < -10) {
        print(" RAMT 16 ");
        slow();
      }
    }

    square(rectangles[17].x, rectangles[17].y, lille);
    if (rectangles[17].y-correction.y > -(lille/2) && rectangles[17].y-correction.y < (lille/2)) {
      if (rectangles[17].x-correction.x > -lille-10 && rectangles[17].x-correction.x < -10) {
        print(" RAMT 17 ");
        slow();
      }
    }

    square(rectangles[18].x, rectangles[18].y, lille);
    if (rectangles[18].y-correction.y > -(lille/2) && rectangles[18].y-correction.y < (lille/2)) {
      if (rectangles[18].x-correction.x > -lille-10 && rectangles[18].x-correction.x < -10) {
        print(" RAMT 18 ");
        slow();
      }
    }

    square(rectangles[19].x, rectangles[19].y-50, mellem);
    if (rectangles[19].y-correction.y > -(mellem/2) && rectangles[19].y-correction.y < (mellem/2)) {
      if (rectangles[19].x-correction.x > -mellem-10 && rectangles[19].x-correction.x < -10) {
        print(" RAMT 19 ");
        slow();
      }
    }
    
    square(rectangles[20].x, rectangles[20].y, lille);
    if (rectangles[20].y-correction.y > -(lille/2) && rectangles[20].y-correction.y < (lille/2)) {
      if (rectangles[20].x-correction.x > -lille-10 && rectangles[20].x-correction.x < -10) {
        print(" RAMT 20 ");
        slow();
      }
    }
    
    square(rectangles[21].x, rectangles[21].y, lille);
    if (rectangles[21].y-correction.y > -(lille/2) && rectangles[21].y-correction.y < (lille/2)) {
      if (rectangles[21].x-correction.x > -lille-10 && rectangles[21].x-correction.x < -10) {
        print(" RAMT 21 ");
        slow();
      }
    }
    
    square(rectangles[22].x, rectangles[22].y, lille);
    if (rectangles[22].y-correction.y > -(lille/2) && rectangles[22].y-correction.y < (lille/2)) {
      if (rectangles[22].x-correction.x > -lille-10 && rectangles[22].x-correction.x < -10) {
        print(" RAMT 22 ");
        slow();
      }
    }
    
    square(rectangles[23].x, rectangles[23].y, lille);
    if (rectangles[23].y-correction.y > -(lille/2) && rectangles[23].y-correction.y < (lille/2)) {
      if (rectangles[23].x-correction.x > -lille-10 && rectangles[23].x-correction.x < -10) {
        print(" RAMT 23 ");
        slow();
      }
    }
    
    square(rectangles[24].x, rectangles[24].y, lille);
    if (rectangles[24].y-correction.y > -(lille/2) && rectangles[24].y-correction.y < (lille/2)) {
      if (rectangles[24].x-correction.x > -lille-10 && rectangles[24].x-correction.x < -10) {
        print(" RAMT 24 ");
        slow();
      }
    }
    
    square(rectangles[25].x, rectangles[25].y, lille);
    if (rectangles[25].y-correction.y > -(lille/2) && rectangles[25].y-correction.y < (lille/2)) {
      if (rectangles[25].x-correction.x > -lille-10 && rectangles[25].x-correction.x < -10) {
        print(" RAMT 25 ");
        slow();
      }
    }
    
    square(rectangles[26].x, rectangles[26].y, lille);
    if (rectangles[26].y-correction.y > -(lille/2) && rectangles[26].y-correction.y < (lille/2)) {
      if (rectangles[26].x-correction.x > -lille-10 && rectangles[26].x-correction.x < -10) {
        print(" RAMT 26 ");
        slow();
      }
    }
    
    square(rectangles[27].x, rectangles[27].y, lille);
    if (rectangles[27].y-correction.y > -(lille/2) && rectangles[27].y-correction.y < (lille/2)) {
      if (rectangles[27].x-correction.x > -lille-10 && rectangles[27].x-correction.x < -10) {
        print(" RAMT 27 ");
        slow();
      }
    }
    
    square(rectangles[28].x, rectangles[28].y, lille);
    if (rectangles[28].y-correction.y > -(lille/2) && rectangles[28].y-correction.y < (lille/2)) {
      if (rectangles[28].x-correction.x > -lille-10 && rectangles[28].x-correction.x < -10) {
        print(" RAMT 28 ");
        slow();
      }
    }
    
    square(rectangles[29].x, rectangles[29].y, lille);
    if (rectangles[29].y-correction.y > -(lille/2) && rectangles[29].y-correction.y < (lille/2)) {
      if (rectangles[29].x-correction.x > -lille-10 && rectangles[29].x-correction.x < -10) {
        print(" RAMT 29 ");
        slow();
      }
    }
    
    square(rectangles[30].x, rectangles[30].y, lille);
    if (rectangles[30].y-correction.y > -(lille/2) && rectangles[30].y-correction.y < (lille/2)) {
      if (rectangles[30].x-correction.x > -lille-10 && rectangles[30].x-correction.x < -10) {
        print(" RAMT 30 ");
        slow();
      }
    }
    
    square(rectangles[31].x, rectangles[31].y, lille);
    if (rectangles[31].y-correction.y > -(lille/2) && rectangles[31].y-correction.y < (lille/2)) {
      if (rectangles[31].x-correction.x > -lille-10 && rectangles[31].x-correction.x < -10) {
        print(" RAMT 31 ");
        slow();
      }
    }
    
    square(rectangles[32].x, rectangles[32].y-100, stor);
    if (rectangles[32].y-correction.y > -(stor/2) && rectangles[32].y-correction.y < (stor/2)) {
      if (rectangles[32].x-correction.x > -stor-10 && rectangles[32].x-correction.x < -10) {
        print(" RAMT 32 ");
        slow();
      }
    }
    
    square(rectangles[33].x, rectangles[33].y-100, stor);
    if (rectangles[33].y-correction.y > -(stor/2) && rectangles[33].y-correction.y < (stor/2)) {
      if (rectangles[33].x-correction.x > -stor-10 && rectangles[33].x-correction.x < -10) {
        print(" RAMT 33 ");
        slow();
      }
    }
    
    square(rectangles[34].x, rectangles[34].y-50, mellem);
    if (rectangles[34].y-correction.y > -(mellem/2) && rectangles[34].y-correction.y < (mellem/2)) {
      if (rectangles[34].x-correction.x > -mellem-10 && rectangles[34].x-correction.x < -10) {
        print(" RAMT 34 ");
        slow();
      }
    }
    
    square(rectangles[35].x, rectangles[35].y, lille);
    if (rectangles[35].y-correction.y > -(lille/2) && rectangles[35].y-correction.y < (lille/2)) {
      if (rectangles[35].x-correction.x > -lille-10 && rectangles[35].x-correction.x < -10) {
        print(" RAMT 35 ");
        slow();
      }
    }
    
    square(rectangles[36].x, rectangles[36].y, lille);
    if (rectangles[36].y-correction.y > -(lille/2) && rectangles[36].y-correction.y < (lille/2)) {
      if (rectangles[36].x-correction.x > -lille-10 && rectangles[36].x-correction.x < -10) {
        print(" RAMT 36 ");
        slow();
      }
    }
    
    rect(rectangles[37].x, rectangles[37].y, 1480, 830);
    if (rectangles[37].y-correction.y > 50 || rectangles[37].y-correction.y < -780){
      print(rectangles[37].x-correction.x);
      slow();
    }
    else if (rectangles[37].x-correction.x > -10 || rectangles[37].x-correction.x < -1490){
      print(rectangles[37].x-correction.x);
      slow();
    }
    
        
   
  }
}
