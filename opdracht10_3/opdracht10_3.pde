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
    .setText("7.27")
    .setAutoClear(false)
    .setCaptionLabel("Professional BTW Berekener (we gaan ervan uit dat hij 21% is)")
    .setColorLabel(color(255, 0, 0));
}

void draw() {
}

void Knop1() {
float mijnGetal;
String mijnString = (tekstveld1.getText());
mijnGetal = float(mijnString) / 100 * 121;
println(mijnGetal);
//Prijs = parseFloat(mijnGetal);

}
