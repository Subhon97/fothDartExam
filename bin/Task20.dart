
void main() {
  List<Course> courses = [
    Course('Dart Programming', 20),
    Course('Flutter Development', 15),
    Course('Data Structures', 25),
    Course('Algorithms', 10)
  ];

  Courses(courses, 15);
}


class Course {
  String _title;
  int _duration;

  Course(this._title, this._duration);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get duration => _duration;

  set duration(int value) {
    _duration = value;
  }

  void display() {
    print('Course Title: $_title, Duration: $_duration hours');
  }
}

void Courses(List<Course> courses, int minDuration) {
  courses.where((course) => course.duration > minDuration).forEach((course) => course.display());
}


