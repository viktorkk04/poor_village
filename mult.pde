public class Mult {
  
  PoorMan p;
  Maps maps;
  
  float mult = 3;

  public Mult(PoorMan p) {
    this.p = p;
  }
  public void check() {
  
    if (p.poorManSpeed.y != 0 && p.poorManSpeed.x != 0 && mult == 3 ) {
      mult += -1;
      
    }
    p.poorManPos.add(new PVector(p.poorManSpeed.x, p.poorManSpeed.y).mult(mult));
    p.dotPos.add(new PVector(p.poorManSpeed.x, p.poorManSpeed.y).mult(mult*(-0.113)));
    
    mult = 3;
    
    if (p.poorManPos.x >= -177) {
   p.poorManPos.x = -177;
   p.dotPos.x = 7;
   }
   
   if (p.poorManPos.y >= 29) {
   p.poorManPos.y = 29;
   p.dotPos.y = 12;
   }
   if (p.poorManPos.y <= -786) {
   p.poorManPos.y = -786;
   p.dotPos.y = 104;
   }
   
  }
   void slow() {
    mult = 1;
    
  }
  
  void stop() {
      mult = 2;
      p.poorManPos.add(new PVector(-p.poorManSpeed.x, -p.poorManSpeed.y).mult(mult));
      p.dotPos.add(new PVector(-p.poorManSpeed.x, -p.poorManSpeed.y).mult(mult*(-0.113)));
    
  }
  
}
