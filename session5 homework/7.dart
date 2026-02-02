import 'dart:io';

void main() {
  print("Enter a short sentence");
  String shortSentence = stdin.readLineSync()!;
  List<String> chars = [];
  List<String> words = shortSentence.split(" ");
  print(words);
  print("words length = ${words.length}");
  for (int i = 0; i < shortSentence.length; i++) {
    if (shortSentence[i] != " ") {
      chars.add(shortSentence[i]);
    }
  }
  print(chars);
  print("chars length = ${chars.length}");
}
