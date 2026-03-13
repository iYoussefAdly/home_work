class Course {
  String title;
  String duration;
  Course(this.title, {this.duration = "3 months"});
  void display() {
    print("Course: $title, Duration: $duration");
  }
}
void main() {
  Course course1 = Course("Flutter Development", duration: "6 months");
  Course course2 = Course("Web Development");

  course1.display();
  course2.display();
}