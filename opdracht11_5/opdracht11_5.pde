boolean gevonden;
String[] namen = {"Jan", "Raman", "Timur", "Aman", "Julian", "Justin", "Eliza"};

void setup(){
  gevonden = false;
  for(int i = 0; i < namen.length; i++){
    // Bestaat de volgende naam?
    if(namen[i] == "Jan"){
      gevonden = true;
    }
  }
    println(gevonden);
  }
