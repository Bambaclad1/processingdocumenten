size(400,400);
background(255,255,255);

int x = 20;
int y = 20;

for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++){
      rect(x, y, 20, 20);
      y = y + 20;
    }
    y = 20;
    x = x + 20;
}
