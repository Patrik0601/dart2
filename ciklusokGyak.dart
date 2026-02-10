import 'dart:io';

void main() {
  //1.feladat
  
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
  }

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
  
  for (int i = 0; i < uefa2024euro.length; i++) {
    print("Index: $i Orzság: ${uefa2024euro[i]}");
  }
  

  //3.feladat
  for (int i = 0; i < uefa2024euro.length - 1; i++) {
    for (int j = i + 1; j < uefa2024euro.length; j++) {
      print("${uefa2024euro[i]} vs ${uefa2024euro[j]}");
    }
  }

  // 4. Számjegyek átlaga
  stdout.write("Adj meg egy számot: ");
  String numStr = stdin.readLineSync()!;
  List<int> digits = numStr.split('').map(int.parse).toList();

  double avg = digits.reduce((a, b) => a + b) / digits.length;
  print("Átlag: ${avg.toStringAsFixed(2)}");

  // 5. Számjegyek négyzete
  stdout.write("Adj meg egy számot: ");
  String numStr2 = stdin.readLineSync()!;

  for (var ch in numStr2.split('')) {
    int d = int.parse(ch);
    print("$d^2 = ${d * d}");
  }

  // 6. Magánhangzók eltávolítása
  stdout.write("Adj meg egy szöveget: ");
  String text = stdin.readLineSync()!;
  String vowels = "aeiouáéíóöőúüűAEIOUÁÉÍÓÖŐÚÜŰ";

  String result = "";
  for (var ch in text.split('')) {
    if (!vowels.contains(ch)) {
      result += ch;
    }
  }
  print(result);

  // 7. Betű + ASCII kód
  stdout.write("Adj meg egy szöveget: ");
  String asciiText = stdin.readLineSync()!;

  for (var ch in asciiText.codeUnits) {
    print("(${String.fromCharCode(ch)}, $ch)");
  }

  // 8. FizzBuzz
  stdout.write("Adj meg egy számot: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    if (i % 15 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else {
      print(i);
    }
  }

  // 9. Belső ciklus break
  for (int i = 1; i <= 6; i++) {
    for (int j = 1; j <= 6; j++) {
      if (i * j == 9) {
        break;
      }
      print("i=$i j=$j");
    }
  }

  // 10. Külső ciklus break
  bool stop = false;

  for (int i = 1; i <= 6 && !stop; i++) {
    for (int j = 1; j <= 6; j++) {
      if (i * j == 9) {
        stop = true;
        break;
      }
      print("i=$i j=$j");
    }
  }
}
