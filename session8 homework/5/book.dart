class Book {
  String _title = "";
  int _pages = 0;
  set title(String value) {
    if (value.isNotEmpty) {
      _title = value;
    } else {
      print("invalid value");
    }
  }
  String get title => _title;
  set pages(int value) {
    if (value >= 0) {
      _pages = value;
    } else {
      print("invalid value");
    }
  }
  int get pages => _pages;
  int get readingTime => _pages * 2;
}
