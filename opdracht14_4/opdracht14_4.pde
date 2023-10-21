import controlP5.*;
import processing.sound.*;

ControlP5 cp;
SoundFile file1, file2, file3;

Button knop1, knop2, knop3;

void setup() {
  size(600, 600);

  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1")
    .setPosition(50, 300)
    .setSize(100, 100)
    .setColorLabel(color(#e0def4))
    .setColorActive(color(#e0def4))
    .setColorBackground(color(#26233a))
    .setCaptionLabel("Klik mij");

  knop2 = cp.addButton("Knop2")
    .setPosition(230, 300)
    .setSize(100, 100)
    .setColorLabel(color(#e0def4))
    .setColorActive(color(#e0def4))
    .setColorBackground(color(#26233a))
    .setCaptionLabel("Klik mij");
 
  knop3 = cp.addButton("Knop3")
    .setPosition(400, 300)
    .setSize(100, 100)
    .setColorLabel(color(#e0def4))
    .setColorActive(color(#e0def4))
    .setColorBackground(color(#26233a))
    .setCaptionLabel("Klik mij");
}

void draw(){
}

void Knop1() {
  file1 = new SoundFile(this, "1.mp3");
  file1.play();
}

void Knop2() {
  file2 = new SoundFile(this, "2.mp3");
  file2.play();
}

void Knop3() {
  file3 = new SoundFile(this, "3.mp3");
  file3.play();
}
