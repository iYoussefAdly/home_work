void main() {
  int userAge = 16;
  bool isHeHasParents = true;
  String areaVariable = "general";
  if (userAge < 18) {
    if (isHeHasParents) {
      switch (areaVariable) {
        case "general":
          print("Access granted to general area with parent supervision");
          break;
        case "restricted":
          print("Access denied to restricted area for minors");
          break;
      }
    }
  }
}
