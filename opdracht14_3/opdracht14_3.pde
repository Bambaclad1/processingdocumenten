import processing.sound.*;

SoundFile file;

void setup() {
  muziek();
}
  
void draw(){
}

void muziek() {
  file = new SoundFile(this, "apple.mp3");
  //file.rate(1);
  file.play();
}
