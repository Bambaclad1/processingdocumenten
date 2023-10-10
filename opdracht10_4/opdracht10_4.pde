import controlP5.*;

ControlP5 cp;

int studenten = 50;
int ouders = 30;

Button knop1, knop2;

void setup() {
  size (800, 800);

  cp = new ControlP5(this);

  text("Open Avond Teller", 280, 50);

  knop1 = cp.addButton("Knop1")
    .setPosition(0, 400)
    .setSize(400, 200)
    .setColorLabel(color(#e0def4))
    .setColorActive(color(#e0def4))
    .setColorBackground(color(#26233a))
    .setCaptionLabel("Aantal Studenten");

  knop2 = cp.addButton("Knop2")
    .setPosition(400, 400)
    .setSize(400, 200)
    .setColorLabel(color(#e0def4))
    .setColorActive(color(#e0def4))
    .setColorBackground(color(#26233a))
    .setCaptionLabel("Aantal ouders");
    text("Er komen er 80 mensen in totaal!", 280, 700);
}

void draw() {
  
}
void Knop1() {
  text("Er komen er 50 ouders!", 280, 650);
}

void Knop2() {
  text("Er komen 30 ouders!", 280, 680);
}
