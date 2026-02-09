void main() {
  List<String> words = [
    "alma",
    "körte",
    "számítógép",
    "asztal",
    "programozás",
    "Dart",
    "tanulás"
  ];

  for (String word in words) {
    if (word.length > 5) {
      print(word);
    }
  }
}
