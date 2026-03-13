void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Youssef", "grade": 4.0},
    {"name": "Ahmed", "grade": 3.0}
  ]; //a
  print("${students[1]["grade"]}"); //b
  double bothGrades = students[0]["grade"] + students[1]["grade"];//c
  print(bothGrades / 2);//ce
}
