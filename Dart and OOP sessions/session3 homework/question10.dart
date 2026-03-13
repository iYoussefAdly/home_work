void main() {
  Map<String, dynamic> countryCodes = {"EG": "Egypt"};
  print(countryCodes["EG"]);
  countryCodes.addAll({"QA": "Qatar"});
  print(countryCodes.length);
  if (countryCodes.containsKey("JO")) {
    print("JO exists");
  } else {
    print("Jordan missing");
  }
}
