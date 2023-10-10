String[] namen = {"Joris", "Melinoe", "Salem"};
String zoekNaam = "Billy";

// Kijken wat de waarden in 0, 1, 2
for (String naam : namen) {
  // is de waarde gelijk aan de naam
  if (naam.equals(zoekNaam)) { // .equals is == voor strings
  // gebruiker laten weten dat we de naam gevonden hebbem
  println("Gevonden!");
  }
}
