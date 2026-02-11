void main() {
  //1.feladata
  List<int> Szamok = [10, 11, 1, 1, 2, 3, 4, 15, 5, 6, 16, 6, 7, 8, 9, 9, 10];
  Szamok.sort();
  List<int> result = Szamok.toSet().toList();
  print(result);

  //2.feladat
  String szoveg = "What a splendid pie pizza pizza bye";
  List<String> vowels = ["a", "e", "i", "o", "u"];
  Map<String, int> vowelsCount = {};
  for (int i = 0; i < szoveg.length; i++) {
    if (vowels.contains(szoveg[i])) {
      vowelsCount.update(
        szoveg[i], 
        (value) => value + 1,
        ifAbsent: () => 1
      );
    } else {
      i++;
    }
  }
  print(vowelsCount);
}
