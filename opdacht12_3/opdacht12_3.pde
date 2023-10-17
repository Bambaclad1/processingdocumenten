

void setup() {
size(600,600);  
// Het zetten van een text om de gebruiker te informeren dat hij op 
// Zijn LMB button moet klikken (Linker Muis Knopje)
textSize(32);
fill(#0f0f0f);
text("klik op LMB om een vierkant te tekenen!", 50, 100);
}

void draw() {
  
}

void mouseDragged(){
  rect(mouseX,mouseY,100,100);
  int een = mouseX;
  int twee = mouseY;
  int r = floor(random(256));
  int b = floor(random(256));
  int g = floor(random(256));
  fill(r,g,b);
  println("Vierkant getekent op", een, twee);
}
