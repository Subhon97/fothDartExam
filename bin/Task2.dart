void main() {
  List<Student> students = [
    Student(name: 'Subhon', averege: [50, 100, 95]),
    Student(name: 'Muin', averege: [40,80,75]),
    Student(name: 'Shuhrat', averege: [45,85,95]),
  ];
  List<double> summaitog = hisob(students);
  for (int i = 0; i < students.length; i++) {
    print('${students[i].name}: ${summaitog[i]}');
  }
}


class Student {
  String name;
  List<int> averege;

  Student({required this.name, required this.averege});
}

List<double> hisob(List<Student> students) {
  return students.map((student) => student.averege.fold(0, (sum, grade) => sum + grade) / student.averege.length).toList();
}


