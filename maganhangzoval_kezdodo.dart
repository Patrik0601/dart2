void main() {
  List<String> words = [
    "alma",
    "banán",
    "eper",
    "szilva",
    "ananász",
    "körte",
    "őszibarack"
  ];

  List<String> vowels = ["a", "e", "i", "o", "u", "á", "é", "í", "ó", "ö", "ő", "ú", "ü", "ű"];

  for (String word in words) {
    if (vowels.contains(word[0].toLowerCase())) {
      print(word);
    }
  }
}
