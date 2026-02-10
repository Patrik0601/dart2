void main() {
  String headTail(String szo) {
    String ujSzo =
        szo[szo.length - 1] + szo.substring(1, szo.length - 1) + szo[0];
    return ujSzo;
  }

  print(headTail("gjhff"));

  List<int> likeFibo(int length) {
    if (length <= 0) return [];

    List<int> result = [];

    for (int i = 0; i < length; i++) {
      if (i < 3) {
        result.add(1);
      } else {
        result.add(result[i - 1] + result[i - 3]);
      }
    }

    return result;
  }

  

  print(likeFibo(10));

  String vowelsLower(String szo) {
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

    String newSzo = "";
    for (int i = 0; i < szo.length; i++) {
      if (vowels.contains(szo[i])) {
        newSzo += szo[i].toLowerCase();
      } else {
        newSzo += szo[i].toUpperCase();
      }
    }
    return newSzo;
  }

  print(vowelsLower("alma fáról esett levél"));
}
