//import 'dart:io';

void main() {
  //1.feladat
  /*
  print("Adjon meg két számot!");
  print("Az első szám: ");
  int szam1 = int.parse(stdin.readLineSync()!);
  print("Második szám: ");
  int szam2 = int.parse(stdin.readLineSync()!);

  if (szam1 > szam2) {
    int sz = szam2;
    szam2 = szam1;
    szam1 = sz;
  }
  for (int i = szam1; i <= szam2; i++) {
    print(i);
  }*/

  //2.feladat

  List<String> uefa2024euro = [
    "Spain",
    "Germany",
    "Portugal",
    "France",
    "Netherlands",
    "Turkey",
    "England",
    "Switzerland",
  ];
  /*
  for (int i = 0; i < uefa2024euro.length; i++) {
    print("Index: $i Orzság: ${uefa2024euro[i]}");
  }
  */

  //3.feladat
  for (int i = 0; i < uefa2024euro.length - 1; i++) {
    for (int j = i + 1; j < uefa2024euro.length; j++) {
      print("${uefa2024euro[i]} vs ${uefa2024euro[j]}");
    }
  }
}
