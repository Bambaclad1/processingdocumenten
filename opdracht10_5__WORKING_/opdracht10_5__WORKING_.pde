import controlP5.*;

float een;
float twee;
float drie;
float vier;

ControlP5 cp;

Button knop1, knop2, knop3, knop4;

Textfield tekstveld1, tekstveld2;

void setup() {
  size(800,400);
  
  text("Professionele Rekenmachine Dingetje", 320, 30);

  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
    .setPosition(550,150)
    .setColorLabel(color(#6e6a86))
    .setColorActive(color(#524f67))
    .setColorBackground(color(#191724))   
    .setSize(30,30)
    .setCaptionLabel("*");
  knop2 = cp.addButton("Knop2")
    .setPosition(580,150)
    .setCaptionLabel("/")
    .setColorLabel(color(#6e6a86))
    .setColorActive(color(#524f67))
    .setColorBackground(color(#191724)) 
    .setSize(30,30);
  knop3 = cp.addButton("Knop3")
    .setPosition(610,150)
    .setColorLabel(color(#6e6a86))
    .setColorActive(color(#524f67))
    .setColorBackground(color(#191724)) 
    .setCaptionLabel("+")
    .setSize(30,30);
  knop4 = cp.addButton("Knop4")
    .setPosition(640,150)
    .setColorLabel(color(#6e6a86))
    .setColorActive(color(#524f67))
    .setColorBackground(color(#191724)) 
    .setCaptionLabel("-")
    .setSize(30,30);
    
    tekstveld1 = cp
    .addTextfield("TextInput1")
    .setPosition(300,150)
    .setSize(100,30)
    .setText("727")
    .setAutoClear(false)
    .setCaptionLabel(" ");
    
    tekstveld2 = cp
    .addTextfield("TextInput2")
    .setPosition(405,150)
    .setSize(100,30)
    .setText("727")
    .setAutoClear(false)
    .setCaptionLabel(" ");
 
}

void draw() {
}

void Knop1() {
  String eentje = (tekstveld1.getText());
  een = float(eentje);
  String tweetje = (tekstveld1.getText());
  twee = float(tweetje);
  drie = een * twee;
  println(drie);      
}

void Knop2() {
 String eentje = (tekstveld1.getText());
  een = float(eentje);
  String tweetje = (tekstveld1.getText());
  twee = float(tweetje);
  drie = een / twee;
  println(drie); 
}

void Knop3() {
  String eentje = (tekstveld1.getText());
  een = float(eentje);
  String tweetje = (tekstveld1.getText());
  twee = float(tweetje);
  drie = een + twee;
  println(drie); 
}

void Knop4() {
  String eentje = (tekstveld1.getText());
  een = float(eentje);
  String tweetje = (tekstveld1.getText());
  twee = float(tweetje);
  drie = een - twee;
  println(drie); 
}
