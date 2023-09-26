float mijnGetal;

void setup(){
  mijnGetal = mijnMethode(6.5, 4.5);
  println(mijnGetal);
}

void draw(){
  
}

float mijnMethode(float getal, float getaltwee){
  float totaal = (getal + getaltwee) / 2;
  return totaal;
}
