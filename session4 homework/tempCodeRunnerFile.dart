void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> countMap = {};
  for (int i = 0; i < names.length; i++) {
    if (countMap.containsKey(names[i])) {
      countMap[names[i]] = countMap[names[i]]! + 1;
    } else {
      countMap[names[i]] = 1;
    }
  }
  for (var entery in countMap.entries) {
    if (entery.value > 1) {
      print(entery.key);
    }
  }
}
