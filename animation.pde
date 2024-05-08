public class Animation {
  PoorMan p;
  
  PImage poorMan_front;
  PImage poorMan_frontHøjre;
  PImage poorMan_frontVenstre;

  PImage[] frontWalk = new PImage[4];

  PImage poorMan_bag;
  PImage poorMan_bagHøjre;
  PImage poorMan_bagVenstre;

  PImage[] bagWalk = new PImage[4];

  PImage poorMan_højre;
  PImage poorMan_højreHøjre;
  PImage poorMan_højreVenstre;

  PImage[] højreWalk = new PImage[4];

  PImage poorMan_venstre;
  PImage poorMan_venstreHøjre;
  PImage poorMan_venstreVenstre;

  PImage[] venstreWalk = new PImage[4];
  
  int resize_x;
  int resize_y;

  

  public Animation(PoorMan p) {
    this.p = p;
  }
    public void load() {
    resize_x = 63;
    resize_y = 106;
  
    //gå nedad
    frontWalk[0] = loadImage("front.png");
    frontWalk[0].resize(resize_x, resize_y);

    frontWalk[1] = loadImage("frontHøjre.png");
    frontWalk[1].resize(resize_x, resize_y);

    frontWalk[2] = loadImage("front.png");
    frontWalk[2].resize(resize_x, resize_y);

    frontWalk[3] = loadImage("frontVenstre.png");
    frontWalk[3].resize(resize_x, resize_y);

    //gå opad
    bagWalk[0] = loadImage("bag.png");
    bagWalk[0].resize(resize_x, resize_y);

    bagWalk[1] = loadImage("bagHøjre.png");
    bagWalk[1].resize(resize_x, resize_y);

    bagWalk[2] = loadImage("bag.png");
    bagWalk[2].resize(resize_x, resize_y);

    bagWalk[3] = loadImage("bagVenstre.png");
    bagWalk[3].resize(resize_x, resize_y);


    //gå til højre
    højreWalk[0] = loadImage("højre.png");
    højreWalk[0].resize(resize_x, resize_y);

    højreWalk[1] = loadImage("højreHøjre.png");
    højreWalk[1].resize(resize_x, resize_y);

    højreWalk[2] = loadImage("højre.png");
    højreWalk[2].resize(resize_x, resize_y);

    højreWalk[3] = loadImage("højreVenstre.png");
    højreWalk[3].resize(resize_x, resize_y);


    //gå til venstre
    venstreWalk[0] = loadImage("venstre.png");
    venstreWalk[0].resize(resize_x, resize_y);

    venstreWalk[1] = loadImage("venstreHøjre.png");
    venstreWalk[1].resize(resize_x, resize_y);

    venstreWalk[2] = loadImage("venstre.png");
    venstreWalk[2].resize(resize_x, resize_y);

    venstreWalk[3] = loadImage("venstreVenstre.png");
    venstreWalk[3].resize(resize_x, resize_y);
  }
  public void walk() {
    if (p.up == true) {
      //Up
      image(bagWalk[frameCount/12%4], width/2, height/2 );
      print(" up ");
      
    } else if (p.down == true) {
      //Down
      image(frontWalk[frameCount/12%4], width/2, height/2 );
      print(" down ");
      
    } else if (p.right == true) {
      //Right
      image(højreWalk[frameCount/12%4], width/2, height/2 );
      print(" right ");
      
    } else if (p.left == true) {
      //Left
      image(venstreWalk[frameCount/12%4], width/2, height/2 );
      print(" left ");
      
    } else {
      image(frontWalk[0], width/2, height/2 );
      print(" stop ");
    }
  }
}
