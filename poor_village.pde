PImage tank;
PImage enemy;

void setup(){
    size(1742, 980);
    enemy = loadImage("random.jpg");
}

void draw() {
    image(enemy, 0, 0);
}