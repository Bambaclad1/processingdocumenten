import processing.video.*;
import processing.sound.*;
Movie video;
SoundFile file;

void setup() {
  size(480,360);
  video = new Movie(this, "apple.mp4");
  video.play();
  speelgeluidje();
}

void movieEvent(Movie video) {
  video.read();
}


void draw() {
  image(video, 0, 0);
}

void speelgeluidje() {
  file = new SoundFile(this, "apple.mp3");
  file.play();
}
