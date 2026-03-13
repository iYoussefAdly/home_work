import 'dart:io';

void main() {
  print("Enter a word");
  String word = stdin.readLineSync()!;
  String reversedWord = word.split("").reversed.join();
  print(reversedWord);
  String vowels = "aeiouAEIOU";
  int vowelsCount = 0;
  for (int i = 0; i < reversedWord.length; i++) {
    if (vowels.contains(reversedWord[i])) {
      vowelsCount++;
    }
  }
    print("Number of vowels in the word: $vowelsCount");
}
