PImage img;

void setup() {
  size(1024,768);
  img = loadImage("images/what.png");
}

void draw() {
  image(img, 0, 0, 1024, 768);
}
