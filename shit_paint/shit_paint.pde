int groot = 10;

void setup() {
  size(800, 500);
  background(#ffffff);
  println("Welcome to worse paint!");
  println("C to clear, Q and E to increase/decrease size");
}

void draw() {
}

void mouseDragged() {
  ellipse(mouseX, mouseY, groot, groot);
}

void keyReleased() {
  if (key == 'c') {
    stroke(#808080);
    ellipse(400, 250, 5000, 5000);
  }
  if (key == 'q') {
    groot = groot + 10;
    println("size = ", groot );
  }
  if (key == 'e') {
    groot = groot - 10;
    println("size = ", groot );
  }
}
