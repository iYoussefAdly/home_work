import 'dart:io';

void main() {
  print("Enter a sentence");
  String sentence = stdin.readLineSync()!;
  List<String> wordsList = sentence.split(" ");

  print("Number of words = ${wordsList.length}");

  int minLength = wordsList.first.length;
  int maxLength = 0;

  String maxWordLength = "";
  String minWordLength = wordsList.first;

  for (var word in wordsList) {
    if (word.length > maxLength) {
      maxLength = word.length;
      maxWordLength = word;
    }

    if (word.length < minLength) {
      minLength = word.length;
      minWordLength = word;
    }
  }

  print("max word length = $maxWordLength");
  print("min word length = $minWordLength");
}
