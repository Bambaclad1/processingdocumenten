String[] todos = new String[10];

void setup() {
  todos[0] = "Hello";
  todos[1] = "I";
  todos[2] = "am";
  todos[3] = "emu";
  todos[4] = "OTORII";
  todos[5] = "..";
  todos[6] = "emu";
  todos[7] = "is";
  todos[8] = "meaning..";
  todos[9] = "SMILEEEE";
  newTodo();
    
}

void draw() {
}

void newTodo() { 
  for (String todo : todos) {
    println(todo);
  }
}
