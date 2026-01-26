void main() {
  List<int> scores = [10, 0, 20, 30];
  scores.remove(0);
  int sum = 0;
  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }
  print(sum);
}
