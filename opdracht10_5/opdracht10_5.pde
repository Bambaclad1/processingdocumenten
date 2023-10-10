import controlP5.*;

ControlP5 cp;

Button knop1, knop2, knop3, knop4;

Textfield tekstveld1, tekstveld2;

void setup() {
  size(1000, 1000);
  background(255, 255, 255);
  cp = new ControlP5(this);

  knop1 = cp.addButton("een");
  knop2 = cp.addButton("twee");
  knop3 = cp.addButton("drie");
  knop4 = cp.addButton("vier");


  knop1.setCaptionLabel("*");
  knop1.setPosition(150, 150);

  knop2.setCaptionLabel("/");
  knop2.setPosition(150, 150);

  tekstveld1 = cp
    .addTextfield("TextInput1")
    .setPosition(100, 100)
    .setText("Ben Dover")
    .setAutoClear(false)
    .setCaptionLabel("Type je naam en klik enter! (Kijk daarna de console log =))")
    .setColorLabel(color(255, 0, 0));
    
  tekstveld2 = cp
    .addTextfield("TextInput2")
    .setPosition(350, 100)
    .setText("Ben Dover")
    .setAutoClear(false)
    .setCaptionLabel("Type je naam en klik enter! (Kijk daarna de console log =))")
    .setColorLabel(color(255, 0, 0));
 
}

void draw() {
}

void Knop1() {
  println("Hoi, mijn naam is: " + tekstveld1.getText());
}
