import 'dart:math';

void main() {
  getRandomNumber();
  int num1 = 5;
  int num2 = 2;
  getEvenOdd(num1);
  getEvenOdd(num2);
  int num3 = 10;
  getDividers(num3);
  String szo = "Alma fáról";
  getVowels(szo);
  getConsonants(szo);
  getFirstChar(szo);
  int mun4 = 12345;
  sumOfDigits(mun4);
  print(getConsonants(szo));
}

void getRandomNumber() {
  Random random = new Random();
  int randomNumber = random.nextInt(99) + 1;
  print("Generated Random Number Between 1 to 99: $randomNumber");
}

void getEvenOdd(int a) {
  if (a % 2 == 0) {
    print("Even");
  } else {
    print("ODD");
  }
}

void getDividers(int b) {
  List<int> osztok = [];
  for (int i = 1; i <= b; i++) {
    if (b % i == 0) {
      osztok.add(i);
    }
  }
  print(osztok);
}

void getVowels(String c) {
  List<String> maganhangzok = [
    "a",
    "á",
    "e",
    "é",
    "i",
    "í",
    "o",
    "ó",
    "ö",
    "ő",
    "u",
    "ú",
    "ü",
    "ű",
  ];
  List<String> maganhangzokSzoban = [];
  for (int i = 0; i <= maganhangzok.length - 1; i++)
    if (c.contains(maganhangzok[i])) {
      maganhangzokSzoban.add(maganhangzok[i]);
    }
  print(maganhangzokSzoban);
}

List<String> getConsonants(String text) {
  List<String> vowels = [
    "a",
    "e",
    "i",
    "o",
    "u",
    "á",
    "é",
    "í",
    "ó",
    "ö",
    "ő",
    "ú",
    "ü",
    "ű",
  ];

  List<String> result = [];

  for (int i = 0; i < text.length; i++) {
    String char = text[i].toLowerCase();

    if (RegExp(r'[a-záéíóöőúüű]').hasMatch(char) && !vowels.contains(char)) {
      result.add(text[i]);
    }
  }
  return result;
}

void getFirstChar(String text) {
  if (text.isEmpty) {
    print("");
  }
  print(text[0]);
}

void sumOfDigits(int number) {
  int sum = 0;
  int n = number.abs();

  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }

  print(sum);
}
