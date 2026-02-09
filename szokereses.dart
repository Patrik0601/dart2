import 'dart:io';

void main() {
  List<String> mostCommonEnglishWords = [
    "the", "be", "to", "of", "and", "a", "in", "that", "have", "I",
    "it", "for", "not", "on", "with", "he", "as", "you", "do", "at",
    "this", "but", "his", "by", "from", "they", "we", "say", "her", "she",
    "or", "an", "will", "my", "one", "all", "would", "there", "their", "is",
    "are", "was", "were", "been", "has", "had", "can", "could", "should"
  ];

  stdout.write("Adj meg egy szót: ");
  String word = stdin.readLineSync()!;

  if (mostCommonEnglishWords.contains(word)) {
    print("A szó szerepel a listában.");
  } else {
    print("A szó NEM szerepel a listában.");
  }
}
