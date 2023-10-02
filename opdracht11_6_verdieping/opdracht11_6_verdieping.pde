int hetzelfde;
int [] getallen = {5,6,7,5,4,3,5,1,2,11};

void setup() {
  for(int i = 0; i < getallen.length; i++){
    if(getallen[i] == 5){
      hetzelfde = hetzelfde + 1;
      
    }else{
      //dummy tekst
    }
  }
  println("De nummer 5 is", hetzelfde, "keer voorgekomen.");
}
