class Car {
  String _brand = "";
  int _year = 0;
  set brand(String value) {
    if (value.isNotEmpty) {
      _brand = value;
    } else {
      print("You must enter a brand name");
    }
  }

  set year(int value) {
    if (value >= 1886) {
      _year = value;
    } else {
      print("this year rejected");
    }
  }

  int get year => _year;
  String get brand => _brand;
}
