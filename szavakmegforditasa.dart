import 'dart:io';

void main() {
  stdout.write("Adj meg egy mondatot: ");
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(" ");
  List<String> reversedWords = words.reversed.toList();

  print(reversedWords.join(" "));
}
