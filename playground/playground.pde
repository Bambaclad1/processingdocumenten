import processing.sound.*;

PImage img1;
SoundFile file, oof;

int[][] snakeSegments; // Array to store coordinates of all snake parts
int segmentSize = 10;
int fps = 5;
int[] fruitXY;
int score = 0;
int speed = 10;
boolean foodSpawned = false;
boolean gotFruit = false;
String direction = "Up";
boolean gameover = false;

void setup() {
  size(300, 300);
  snakeSegments = new int[1000][2]; // Maximum segments set to 1000
  snakeSegments[0][0] = 140; // Starting X
  snakeSegments[0][1] = 140; // Starting Y
  fruitXY = new int[]{160, 160};
  file = new SoundFile(this, "coconutmall.mp3");
  file.rate(1.1);
  file.amp(0.2);
  file.play();
  img1 = loadImage("death.jpg");
  frameRate(fps);
}

void draw() {
  background(255);
  fill(#000000);
  textSize(20);
  text(score, 150, 15);
  snakeMovement();
  checkCollision();
  deathScreen();
  consoleLog();
  spawnFood();
  foodEaten();
  snakeGrow();
}

void keyPressed() {
  if (!gameover) {
    if (keyCode == UP && direction != "Down") {
      direction = "Up";
    } else if (keyCode == DOWN && direction != "Up") {
      direction = "Down";
    } else if (keyCode == LEFT && direction != "Right") {
      direction = "Left";
    } else if (keyCode == RIGHT && direction != "Left") {
      direction = "Right";
    }
  }
  if (keyCode == ' ' && gameover) {
    setupGame();
  }
}

void setupGame() {
  score = 0;
  gameover = false;
  fps = 5;
  snakeSegments = new int[1000][2];
  snakeSegments[0][0] = 140; // Starting X
  snakeSegments[0][1] = 140; // Starting Y
  direction = "Up";
}

void snakeMovement() {
  if (!gameover) {
    for (int i = snakeSegments.length - 1; i > 0; i--) {
      snakeSegments[i][0] = snakeSegments[i - 1][0];
      snakeSegments[i][1] = snakeSegments[i - 1][1];
    }

    if (direction.equals("Up")) {
      snakeSegments[0][1] -= speed;
    } else if (direction.equals("Down")) {
      snakeSegments[0][1] += speed;
    } else if (direction.equals("Left")) {
      snakeSegments[0][0] -= speed;
    } else if (direction.equals("Right")) {
      snakeSegments[0][0] += speed;
    }
  }
}

void snakeGrow() {
  fill(#000000);
  for (int i = 0; i < snakeSegments.length; i++) {
    rect(snakeSegments[i][0], snakeSegments[i][1], segmentSize, segmentSize);
  }
}

void checkCollision() {
  if (snakeSegments[0][0] > 300 || snakeSegments[0][0] < 0 || snakeSegments[0][1] > 300 || snakeSegments[0][1] < 0) {
    gameover = true;
  }

  // Check if the snake collides with itself
  for (int i = 1; i < snakeSegments.length; i++) {
    if (snakeSegments[0][0] == snakeSegments[i][0] && snakeSegments[0][1] == snakeSegments[i][1]) {
      gameover = true;
      break;
    }
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
  println("Snake X: " + snakeSegments[0][0] + " Snake Y: " + snakeSegments[0][1] + " | Gameover = " + gameover + " | Score = " + score + " | FPS = " + fps);
}

void spawnFood() {
  if (!foodSpawned && !gameover) {
    fill(#FF5858);
    rect(fruitXY[0], fruitXY[1], segmentSize, segmentSize);
  }
}

void foodEaten() {
  if (snakeSegments[0][0] == fruitXY[0] && snakeSegments[0][1] == fruitXY[1]) {
    foodSpawned = false;
    score++;
    gotFruit = true;
    growSnake();
  }
}

void growSnake() {
  int lastIndex = snakeSegments.length - 1;
  int[] lastSegment = snakeSegments[lastIndex];

  for (int i = 1; i < snakeSegments.length; i++) {
    if (snakeSegments[i][0] == lastSegment[0] && snakeSegments[i][1] == lastSegment[1]) {
      snakeSegments[i] = snakeSegments[lastIndex - 1].clone();
      break;
    }
  }

  foodSpawned = true;
  placeNewFood();
}

void placeNewFood() {
  fruitXY[0] = int(random(30)) * segmentSize;
  fruitXY[1] = int(random(30)) * segmentSize;
}
