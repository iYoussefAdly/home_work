void main() {
  List<String> names = ["Youssef", "Ahmed", "Mina", "Ali", "Youssef"];
  int listLength = names.length;
  print("List length: $listLength");
  Set<String> setNames = names.toSet();
  int setLength = setNames.length;
  print("Set Length: $setLength");
  Map<String, dynamic> countsOfEachName = {
    "Youssef": 2,
    "Ahmed": 1,
    "Mina": 1,
    "Ali": 1
  };
  int mapLength = countsOfEachName.length;
  print("Map length: $mapLength");
  if (countsOfEachName["Youssef"] > 1 ||
      countsOfEachName["Ahmed"] > 1 ||
      countsOfEachName["Ali"] > 1 ||
      countsOfEachName["Mina"] > 1) {
    print("there's a name appears more than one time");
  }
}
