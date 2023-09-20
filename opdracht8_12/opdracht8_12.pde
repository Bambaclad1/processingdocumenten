// ik had deze opdracht prachtig gemaakt maar ik was hem helaas kwijt
size(400,400);
background(255,255,255);

int x = 20;
int y = 20;

for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++){
        if((i+j) % 2 == 0){
         fill(16,16,16,255);
         }else{
  
         fill(227,192,123,255);
         }
      rect(x, y, 20, 20);
      y = y + 20;
    }
    y = 20;
    x = x + 20;
}
