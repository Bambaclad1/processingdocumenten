String mijnTekst;

void setup() {
  mijnTekst = mijnString("Wat ", "doe ", "je ", "nou?");
  print(mijnTekst);
}

void draw() {
}

String mijnString(String a, String b, String c, String d) {
  String totaal = a + b + c + d;
  return totaal;
}
