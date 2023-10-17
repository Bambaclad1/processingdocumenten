String[] alphabet = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
String randomLetter; // Use a String to store the random letter
boolean correct = false;

void setup() {
  size(500, 500);
  pickRandomLetter(); // Call a function to pick a random letter when the game starts
}

void draw() {
  background(255);
  textSize(30);
  fill(0);  // Use color(0) for black
  text(randomLetter, 220, 220);
}

void pickRandomLetter() {
  int randomIndex = int(random(alphabet.length));
  randomLetter = alphabet[randomIndex];
}

void keyPressed() {
  char pressedKey = key;
  char randomChar = randomLetter.charAt(0); // Get the character from the randomLetter

  if (pressedKey == randomChar) {
    println("Correct!");
    correct = true;
  } else {
    println("Incorrect!");
    correct = false;
  }

  // If the player guessed correctly, pick a new random letter
  if (correct) {
    pickRandomLetter();
  }
}
