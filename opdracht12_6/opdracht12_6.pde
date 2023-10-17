int x = 230;
int y = 230;

void setup() {
  size(500, 500);
}

void draw() {
  background(225);
  rect(x,y,20,20);
  frameRate(60);
}
// Up38 Down40 Left37 Right39

void keyPressed() {
  if (keyCode == 38){
    y = y - 10;
  }
  if (keyCode == 40){
    y = y + 10;
  }
  if (keyCode == 37){
    x = x - 10;
  }
  if (keyCode == 39){
    x = x + 10;
  }
}
