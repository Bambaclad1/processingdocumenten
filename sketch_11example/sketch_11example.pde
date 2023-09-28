int jongste = 150;
int oudste = 0;
int[] leeftijden = {98, 14, 47, 8, 50};

void setup() {
  for (int i = 0; i < leeftijden.length; i++) {
    // Is de huidige jongste ouder dan de huidige waarde uit de array?
    if (jongste > leeftijden[i]) {
      //Ja? dan is dit de nieuwe jongste.
      jongste = leeftijden[i];
    }
    // Is de huidige oudste jonger dan de huidige waarde uit de array?
    if(oudste < leeftijden[i]){
      //Ja? dan is dit de nieuwe oudste.
     oudste = leeftijden[i];
    }
  }
  println(oudste);
  println(jongste);
}
