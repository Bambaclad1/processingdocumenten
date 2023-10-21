import processing.sound.*;
PImage img1;
SoundFile file;

int x = 140;
int y = 140;
int fps = 5;
int xFruit = 160;
int yFruit = 160;
int score = 0;
int speed = 10;
int snakeLength = 1;
boolean foodSpawned = false;
boolean gotFruit = false;
String direction = "Up";
boolean gameover = false;

void setup() {
  size(300, 300);
  file = new SoundFile(this, "coconutmall.mp3");
  file.rate(1.1);
  file.amp(0.5);
  file.play();
  img1 = loadImage("death.jpg");
  frameRate(fps);
}

void draw() {
  background(255);
  snakeMovement();
  checkCollision();
  deathScreen();
  consoleLog();
  spawnFood();
  snakeGrow();
}

void keyPressed() {
  // Met pijltjes, als je een van de knopjes klikt verandert de string.
  if (keyCode == 38) {
    direction = "Up";
  }
  if (keyCode == 40) {
    direction = "Down";
  }
  if (keyCode == 37) {
    direction = "Left";
  }
  if (keyCode == 39) {
    direction = "Right";
  }

  if (keyCode == 32 && gameover) {
    x = 140;
    y = 140;
    score = 0;
    gameover = false;
  }
}

void snakeMovement() {
  fill(#000000);
  // Ik laat een vierkant voor nu de snake zijn
  rect(x, y, 10, 10);
  // Gebaseerd op de keypressed, welke geklikt is zal het hier bewegen van zichzelf. default is Up
  if (!gameover) {
    if (direction == "Right") {
      x = x + speed;
    } else if (direction == "Left") {
      x = x - speed;
    } else if (direction == "Up") {
      y = y - speed;
    } else if (direction == "Down") {
      y = y + speed;
    }
  }
}

void checkCollision() {
  if (x > 300) {
    gameover = true;
  }
  if (x < -10) {
    gameover = true;
  }
  if (y > 310) {
    gameover = true;
  }
  if (y < -10) {
    gameover = true;
  }
}

void deathScreen() {
  if (gameover) {
    background(#770004);
    textSize(20);
    fill(#FFFFFF);
    fps = 5;
    frameRate(fps);  
    image(img1, 0, 0);
    text("Space to try again!!", 60, 140);
    
    text("Score = " + score, 90, 180);
  }
}

void consoleLog() {
  println("X is:", x, "Y is:", y, "|  Gameover =", gameover, "|  Score =", score, "|  Keypressed = ", keyCode, "|  gotFruit is:", gotFruit, "|   foodSpawned is:", foodSpawned, "|  FPS is:", fps);
}

void spawnFood() {
  if (!foodSpawned && !gameover) {
    fill(#FF5858);
    rect(xFruit, yFruit, 10, 10);
  }

  if (gotFruit) {
    xFruit = int(random(10, 29)) * 10;
    yFruit = int(random(10, 29)) * 10;
    frameRate(fps);
    fps = fps + 1;
    gotFruit = false;
  }
}

void snakeGrow() {
  if (x == xFruit && y == yFruit) {
    foodSpawned = false;
    score = score + 1;
    gotFruit = true;
  }
}
