import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  Map<String, int> wordCount = {};
  for (var word in words) {
    word = word.toLowerCase();
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }
  for (var entry in wordCount.entries) {
    if (entry.value == 1) {
      print(entry.key);
    }
  }
  int uniqueCount = wordCount.values.where((count) => count == 1).length;
  print("$uniqueCount");
}