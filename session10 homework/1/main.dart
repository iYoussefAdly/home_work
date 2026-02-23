import 'note_app.dart';
import 'notes.dart';

void main() {
  NoteApp noteApp = NoteApp();

  noteApp.addNote(
    Note(title: "Youssef", content: "Flutter Developer"),
  );

  noteApp.addNote(
    Note(title: "Ahmed", content: "Backend Developer"),
  );

  noteApp.addNote(
    Note(title: "Ali", content: "Mobile Developer"),
  );

  print("All Notes");
  for (var note in noteApp.listNotes()) {
    print(note);
  }
  print("Search Result");
  var result = noteApp.searchByTitle(title: 'Youssef');
  if (result != null) {
    print(result);
  }
}