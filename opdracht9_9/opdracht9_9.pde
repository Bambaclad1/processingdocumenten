void setup() {
  size(500, 500);
  boompje(200, 200, 50, 300, 225, 225, 150);
}

void draw() {
}

void boompje(int a, int b, int c, int d, int e, int f, int g) {
  fill(#89471C);
  stroke(#89471C);
  rect(a, b, c, d);
  for (int i = 0; i < 1; i++) {
    fill(#54CE19);
    stroke(#FFFFFF);
    ellipse(e, f, g, g);
    e = e + 15;
    f = f + -15;
    
  }
}
