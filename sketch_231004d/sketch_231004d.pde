String zin = "Dit is een zin met meerdere woorden";
String[] woorden = zin.split(" ");
// Een int maken die de woorden gaat tellen
int keren = 0;

//een for loop maken die ervoor zorgt dat keren word geupdaté elke keer er een wordje is gekomen
for (int i = 0; i < woorden.length; i++) {
  keren = keren + 1;
}
// nu printen we hem uit en voila
println("Het woordje komt", keren, "keer");
