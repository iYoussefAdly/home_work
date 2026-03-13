class Note {
  final String _title;
  final String _content;
  final DateTime _date;
  Note({required String title, required String content})
      : _title = title,
        _content = content,
        _date = DateTime.now();
  String get title => _title;
  String get content => _content;
  DateTime get date => _date;
  @override
  String toString() {
    return "Title: $_title\nContent: $_content\nDate: $date\n";
  }
}
