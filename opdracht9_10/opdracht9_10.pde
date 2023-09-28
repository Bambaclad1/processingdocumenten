void setup() {
  size(500, 500);
  boompje(200, 200, 50, 300, 225, 225, 150);
  bos(50,450,100,100,100,50);
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
// dit hiet hoort een bos te zijn
void bos(int aa, int bb, int cc, int dd, int ee, int ff) {
  for (int i = 0; i < 4 ; i++) {
  fill(#3B9B0C);
  ellipse(aa,bb,cc,dd);
  aa = aa + 30;
  bb = bb + 10;
  ellipse(aa,bb,cc,dd);
  bb = bb - 15;
  }
}
