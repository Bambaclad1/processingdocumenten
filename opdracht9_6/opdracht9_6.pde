String mijnTekst;

void setup() {
  size(500, 500);
  background(255, 255, 255);
  cirkeltje(250, 250, 300, 300);
}

void draw() {
}

void cirkeltje(int a, int b, int c, int d) {
  int size = 150;
    for (int i = 0; i < 5; i++) {
    ellipse(250, 250, size, size);
    size = size -10;
  }
}
