void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7]; //a
  Set<int> newNumbers = numbers.toSet(); //b
  print(newNumbers); //b
  print(
      "${newNumbers.add(8)}\n${newNumbers.remove(4)}\n${newNumbers.contains(4)}");//c
}
