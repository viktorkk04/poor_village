public class Maps {

  PoorMan p;

  boolean toggleMap;

  PImage map;
  PImage kort;
  PImage dot;
  PImage megaKort;

  PVector dotPos;

  public Maps(PoorMan p) {
    this.p = p;
  }

  public void load() {
    
    
    

    map = loadImage("village.png");
    map.resize(3322, 1759);
    
    
    kort = loadImage("første.png");
    kort.resize(378, 200);
    kort = kort.get(121, 54, kort.width-180, kort.height-95);
    
    
    dot = loadImage("dot.png");
    dot.resize(10, 10);
    
    
    
    
    megaKort = loadImage("village.png");
    megaKort.resize(width, height);
    
    
  }
  public void update() {
    
    background(1, 110, 129);
    
    image(map,p.poorManPos.x, p.poorManPos.y);
    
    image(kort, 10, 10);
    
    image(dot, p.dotPos.x, p.dotPos.y);
    
    fill(0);
    
    rect(5,10,3,105);
    rect(205,10,3,105);
    rect(5,10,200,3);
    rect(5,115,203,3);
    

    
    
    if(toggleMap == true){
    stor();
    }
  }

  public void stor() {
    image(megaKort, 0, 0);
  }

  void releasedKey() {
    
      toggleMap =(!toggleMap);
    
  }
}
