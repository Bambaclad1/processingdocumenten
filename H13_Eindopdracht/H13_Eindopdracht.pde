import processing.sound.*;
PImage img1, img2;
SoundFile file;

int[] snakeXY;
// een array die 100 arrays kan houden, met 2 columns, stel je voor de snake kan niet langer dan 100 zijn in de snake game
int[][] snakeBody = new int[100][2];
int[] prevsnakeXY;
int[] fruitXY;
int score = 1;
int speed = 10;
int snakeLength = 1;
boolean foodSpawned = false;
boolean gotFruit = false;
String direction = "Up";
boolean gameover = false;

void setup() {
  println("uncomment consoleLog(); om de log te laten zien!");
  size(300, 300);
  snakeXY = new int[]{140, 140};
  fruitXY = new int[]{160, 160};
  prevsnakeXY = new int[2];
  file = new SoundFile(this, "coconutmall.mp3");
  file.rate(1.1);
  file.play();
  img1 = loadImage("death.jpg");
  img2 = loadImage("snakeBackground.png");
  frameRate(15);
}

void draw() {
  background(255);
  image(img2, 0, 0);
  fill(#26233a);
  textSize(20);
  text(score, 280, 15);
  snakeMovement();
  checkCollision();
  snakeGrow();
  deathScreen();
  foodEaten();
  consoleLog();
  spawnFood();
}

void keyPressed() {
  // Met pijltjes, als je een van de knopjes klikt verandert de string.
  if (keyCode == 38) {
    direction = "Up";
  } else if (keyCode == 40) {
    direction = "Down";
  } else if (keyCode == 37) {
    direction = "Left";
  } else if (keyCode == 39) {
    direction = "Right";
  } else if (keyCode == 87) {
    direction = "Up";
  } else if (keyCode == 83) {
    direction = "Down";
  } else if (keyCode == 65) {
    direction = "Left";
  } else if (keyCode == 68) {
    direction = "Right";
  }
  if (keyCode == 32 && gameover) {
    snakeXY[0] = 140;
    snakeXY[1] = 140;
    score = 0;
    gameover = false;
  }
}

void snakeMovement() {
  fill(#000000);
  // Ik laat een vierkant voor nu de snake zijn
  // Gebaseerd op de keypressed, welke geklikt is zal het hier bewegen van zichzelf. default is Up
  if (!gameover) {
    if (direction == "Right") {
      snakeXY[0] = snakeXY[0] + speed;
    } else if (direction == "Left") {
      snakeXY[0] = snakeXY[0] - speed;
    } else if (direction == "Up") {
      snakeXY[1] = snakeXY[1] - speed;
    } else if (direction == "Down") {
      snakeXY[1] = snakeXY[1] + speed;
    }
    prevsnakeXY[0] = snakeXY[0];
    prevsnakeXY[1] = snakeXY[1];
  }
}

void checkCollision() {
  if (snakeXY[0] > 300) {
    gameover = true;
  }
  if (snakeXY[1] < 0) {
    gameover = true;
  }
  if (snakeXY[1] > 290) {
    gameover = true;
  }
  if (snakeXY[0] < 0) {
    gameover = true;
  }
}

void deathScreen() {
  if (gameover) {
    background(#770004);
    textSize(20);
    fill(#FFFFFF);
    snakeLength = 1;
    image(img1, 0, 0);
    text("Space to try again!!", 60, 140);
    text("Score = " + score, 90, 180);
  }
}

void consoleLog() {
  println("X is:", snakeXY[0], "Y is:", snakeXY[1], "|   prevX is:", prevsnakeXY[0], "prevY is:", prevsnakeXY[1], "|  Gameover =", gameover, "|  Score =", score, "|  Keypressed = ", keyCode, "|  gotFruit is:", gotFruit, "|   foodSpawned is:", foodSpawned, "|   Snakelength is:", snakeLength);
}


void spawnFood() {


  if (gotFruit) {
    fruitXY[0] = int(random(10, 29)) * 10;
    fruitXY[1] = int(random(10, 29)) * 10;
    snakeLength = snakeLength + 1;
    gotFruit = false;
  }
  
    if (!foodSpawned && !gameover) {
    fill(#FF5858);
    rect(fruitXY[0], fruitXY[1], 10, 10);
  }
}

void foodEaten() {
  if (snakeXY[0] == fruitXY[0] && snakeXY[1] == fruitXY[1]) {
    foodSpawned = false;
    score = score + 1;
    gotFruit = true;
  }
}

void snakeGrow() { // dit stukje was lastig dus voormezelf comment ik wat ik gedaan heb
  fill(#000000); // Set the fill color to black.
  rect(snakeXY[0], snakeXY[1], 10, 10); // de snake wordt getekent op de snake hoofd zn coordinaten

  int prevX = snakeXY[0]; // de x coordinaat van de snake wordt als previous opgeslagen in de prevX int
  int prevY = snakeXY[1]; // zelfde maar voor de Y

  // gebaseerd op de score ligt eraan hoelang de snake is.
  for (int i = 1; i < score + 1; i++) {
    rect(snakeBody[i][0], snakeBody[i][1], 10, 10); // snake lichaam tekenen door de 1ste en 2de x en y opgeslagen in de snakebody te gebruiken
  }

  // de vorige positie opslaan en updaten
  for (int i = 1; i < snakeLength - 1; i++) {
    int tempX = snakeBody[i][0]; // slaat tempX in de array op
    int tempY = snakeBody[i][1]; // zelfde boven maar met Y
    if (snakeXY[0] == snakeBody[i][0] && snakeXY[1] == snakeBody[i][1]) {
      gameover = true;
    }
    snakeBody[i][0] = prevX;
    snakeBody[i][1] = prevY;

    prevX = tempX;
    prevY = tempY;
    int 
  }
}
