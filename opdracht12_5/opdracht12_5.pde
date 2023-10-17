int clickx1 = 0;
int clicky1 = 0;
int clickx2 = 0;
int clicky2 = 0;

void setup() {
size(500,500);
}

void draw() {
  frameRate(60);
}

void mousePressed(){
  clickx1 = mouseX;
  clicky1 = mouseY;
}

void mouseReleased(){
  clickx2 = mouseX;
  clicky2 = mouseY;
  line(clickx1,clicky1,clickx2,clicky2);
}
