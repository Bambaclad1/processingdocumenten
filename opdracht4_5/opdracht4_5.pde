float seconden = 250000;
println("Ik ga", seconden, "seconden naar uren, dagen en jaren brengen");

println("er zijn",seconden,"seconden");

float uren = seconden / 60 / 60;
println("dat zijn", uren, "uren");

float dagen = seconden / 60 / 60 / 24;
println("dat zijn", dagen, "dagen");

float jaren = dagen / 365;
println("Dat zijn", jaren, "jaren.");
