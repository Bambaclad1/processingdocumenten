double a = 0;
double b = 1;

println(a);
println(b);

for(int c = 0; c < 1479; c++){
  double resultaat = a + b;
  a = b;
  b = resultaat;
  println(resultaat);


}
