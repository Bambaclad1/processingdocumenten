//Opdracht 8.9 is overgeslagen omdat de vraag opdracht 8.6  niet duidelijk was, ik heb zelf aan de meester gevraagt.
//van 8.9 is dan alleen gedeeltelijk gemaakt.
size(1000,1000);
background(255,255,255);

int sizeC = 1000;

for(int i = 0; i < 50; i++){
  ellipse(500, 500, sizeC, sizeC);
  println(sizeC);
  sizeC = sizeC -7;

}
