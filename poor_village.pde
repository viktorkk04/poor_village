PVector correction;

PoorMan p;

Mult m;

Maps maps;
House h;
Path path;
Water w;

Ui ui;

Animation a;


void setup() {
  size(1742, 980);
 
  p = new PoorMan();

  ui = new Ui();

  m = new Mult(p);

  path = new Path(p, m);
  path.SetPath();
  
  h = new House(p, m);
  h.SetHouse();
  
  w = new Water(p, ui);
  w.SetWater();

  maps = new Maps(p);

  maps.load();

  ui.load();

  a = new Animation(p);
  

  correction = new PVector(915, 525);

  a.load();
}

void draw() {
  if(maps.toggleMap == false){

  m.check();

  maps.update();
  
  path.DrawPath();
  h.DrawHouse();
  w.DrawWater();
  
  ui.run();
  

  a.walk();
  print(p.poorManPos);

  println(" ");
  }
  
  else{
    maps.update();
  }
}

void keyPressed() {
  p.pressedKey();
}

void keyReleased() {
  p.releasedKey();
  
  if (key == 'm' || key == 'M') {
    maps.releasedKey();
  }
}
