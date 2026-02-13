class Grade {
  int _score = 0;
  set score(int value) {
    if (value < 0 || value > 100) {
      print('Invalid score');
    } else {
      _score = value;
    }
  }
  int get score => _score;
  bool get isPass => _score >= 50;
}