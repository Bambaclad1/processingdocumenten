void draw() {
}

void setup() {
  Person p = new Person();
  p.name = "Raman";
  p.zegHallo();
  p.voorstellen();
  Person p2 = new Person();
  p2.name = "Singh";
  p2.voorstellen();
}

class Person {
  String name;
  int age;

  void zegHallo() {
    println("Hello World!");
  }

  void voorstellen() {
    println("Hallo, ik ben " + name);
  }
}
