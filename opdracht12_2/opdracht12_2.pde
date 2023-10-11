float click;

void setup() {

millis();
}

void draw() {
keyPressed();
keyReleased();
println(click);
}

void keyPressed(){
  if(keyCode == 32){
    click = click + 1;
  }else{
  }         
}

void keyReleased(){
  if(keyCode == 32){
    click = click;
  }
}
