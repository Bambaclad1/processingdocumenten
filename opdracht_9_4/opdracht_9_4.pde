float mijnGetal;

void setup() {
  size(400, 400);
  vierkantje(100, 100, 200, 200);
}

void draw() {
}

void vierkantje(int x1, int y1, int x2, int y2) {
    strokeWeight(5);
    line(x1, y1, x2, y1);
    line(x1, y2, y1, x1);
    line(x2, y2, x2, x1);
    line(y2, x2, y1, x2);
}
