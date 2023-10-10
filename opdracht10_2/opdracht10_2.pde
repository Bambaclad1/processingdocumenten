import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup() {
  size(400, 200);
  background(255, 255, 255);
  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1");

  knop1.setCaptionLabel("Enter");
  knop1.setPosition(150, 150);

  tekstveld1 = cp
    .addTextfield("TextInput1")
    .setPosition(100, 100)
    .setText("hachune miku")
    .setAutoClear(false)
    .setCaptionLabel("Type je naam en klik enter! (Kijk daarna de console log =))")
    .setColorLabel(color(255, 0, 0));
}

void draw() {
}

void Knop1() {
  println("Hoi, mijn naam is: " + tekstveld1.getText());
}
