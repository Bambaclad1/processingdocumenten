import controlP5.*;

ControlP5 cp;

Button knop1, knop2;

float tijd;
boolean magAfsluiten = false;

void setup() {
  size (800, 800);

  cp = new ControlP5(this);

  text("Graag een van deze knopjes klikken", 280, 50);

  knop1 = cp.addButton("Knop1")
    .setPosition(0, 400)
    .setSize(400, 200)
    .setColorLabel(color(#e0def4))
    .setColorActive(color(#e0def4))
    .setColorBackground(color(#26233a))
    .setCaptionLabel("Klik mij");

  knop2 = cp.addButton("Knop2")
    .setPosition(400, 400)
    .setSize(400, 200)
    .setColorLabel(color(#e0def4))
    .setColorActive(color(#e0def4))
    .setColorBackground(color(#26233a))
    .setCaptionLabel("Klik mij");
}

void draw() {
  if(magAfsluiten){
    if(second() >= tijd){
      exit();
    }
  }
}

void Knop1() {
  println("Goed gedaan!");
  text("Goed Gedaan!", 280, 80);
}

void Knop2() {
  if(!magAfsluiten ){
  println("Helaas Fout, dag dag!");
  text("Helaas fout!!!", 280, 80);
  magAfsluiten = true;
  tijd = second() + 1.5;
}
  

}
