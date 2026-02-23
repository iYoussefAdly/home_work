import 'notes.dart';
class NoteApp {
  List<Note> _notes = [];
  void addNote(Note note) {
    _notes.add(note);
  }

  List<Note> listNotes() {
    _notes.sort((a, b) => a.date.compareTo(b.date));
    return _notes;
  }

  Note? searchByTitle({required String title}) {
    for (var note in _notes) {
      if (note.title == title) {
        return note;
      }
    }
    print("this note isn't exist");
    return null;
  }
}
