size(100,100);
background(255,255,255);

int xWaarde = 10;
int yWaarde = 10;

for(int i = 3; i < 5; i++){
  for(int j = 0; j < 5 ; j++){
    rect(xWaarde, yWaarde, 10,10);
    yWaarde = yWaarde + 10;
  }
  yWaarde = 10;
  xWaarde = xWaarde + 10;
}
