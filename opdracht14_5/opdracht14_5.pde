PImage img;
int x;

void setup() {
  size(1000,1000);
  img = loadImage("a.jpeg");

}

void draw(){
  frameRate(5);
//  background(255);
  for(int i = 0; i < 20; i++){
    image(img, x, x, 300, 300);
    x = x + 1;
  }

}

void loopie(){

}
