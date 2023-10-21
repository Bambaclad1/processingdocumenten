PImage img1, img2, img3;

void setup() {
  size(1000,1000);
  img1 = loadImage("images/blyat.png");
  img2 = loadImage("images/1.jpg");
  img3 = loadImage("images/2.jpg");
}

void draw() {
  image(img1, 0, 0);
  image(img2, 500, 500);
  image(img3, 500, 200);
}
