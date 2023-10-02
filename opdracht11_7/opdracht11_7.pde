int hetzelfde;
int [] getallen = {5, 6, 7, 5, 4, 3, 5, 1, 2, 11, 2, 2, 2};

void setup() {
  telHoeVaakHetGetalVoorkomt(2);
}

void draw() {
  //ik ben een dummy tekst
}

void telHoeVaakHetGetalVoorkomt(int getal) {
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == getal) {
      hetzelfde = hetzelfde + 1;
    } else {
      //dummy tekst
    }
  }
  println("Het nummer", getal, "is", hetzelfde, "keer voorgekomen.");
}
