int seconden = 0;
boolean gaatDoor = false;
boolean reset = false;

void setup() {
  size(500, 500);
  println("Spatie om de stopwatch te starten/pauzeren, Backspace is reset");
  textSize(32);
  fill(0, 0, 0);
  
}

void draw() {
  background(255, 255, 255);
  fill(0, 0, 0);
  textAlign(CENTER);
  text("Skere Stopwatch", 150, 30);
  text(seconden, 220, 250);
  frameRate(1);
  
  if(reset) {
    seconden = 0;
    reset = false;
  }
  
  if(gaatDoor){
    seconden++;
  }
}


void keyReleased() {
  if (keyCode == 32) {
    gaatDoor = true;
  } else {
    if (keyCode == 8) {
      reset = true;
      gaatDoor = false;
    }
  }
}
