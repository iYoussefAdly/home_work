void main() {
  List<String> names = ["Youssef", "Ahmed", "Mina", "Youssef"];
  int listLength = names.length;
  Set<String> names2 = names.toSet();
  int setLength = names2.length;
  if (setLength == listLength) {
    print("NO duplicates in the list");
  } else {
    print("duplicates were removed");
  }
}
